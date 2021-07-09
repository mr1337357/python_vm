#decoder states:
#0. not enough bytes
#1. loaded but not decoded
#2. ops loaded but not decoded
#...
#99. invalid 

import x86_opcodes
import sys

def hexcode(byte):
    hexstr = '0123456789abcdef'
    return hexstr[byte>>4] + hexstr[byte&0x0f]

class decoder:
    def __init__(self):
        self.state = 0
        self.opcode = []
        self.expect_operands = [0,0,0]
        self.prefix = None
        self.is_hungry = True
        self.op1 = []
        self.op2 = []
        self.op3 = []

    def hungry(self):
        return self.is_hungry
    
    def eat(self,byte):
        next_state = 99
        self.is_hungry = False
        if self.state == 0:
            if byte in x86_opcodes.prefixes:
                self.prefix = byte
                next_state = 1
                self.is_hungry = True
            else:
                self.state = 1
                
        if self.state == 1:
        
            if byte in x86_opcodes.single_byte:
                self.opcode.append(byte)
                self.expect_operands = x86_opcodes.single_byte[byte]
                next_state = 3
                
            elif byte == 0x0f:
                self.opcode.append(byte)
                next_state = 2
                self.is_hungry = True
        if self.state == 2:
            if byte in x86_opcodes.second_bytes:
                self.opcode.append(byte)
                self.expect_operands = x86_opcodes.second_bytes[byte]
                next_state = 3
        if self.state == 3:
            if len(self.op1) < self.expect_operands[0]:
                self.op1.append(byte)
            elif len(self.op2) < self.expect_operands[1]:
                self.op2.append(byte)
            if len(self.op1)+len(self.op2)+len(self.op3) < sum(self.expect_operands):
                next_state = 3
                self.is_hungry = True
            else:
                next_state = 4
        if self.expect_operands and next_state == 3:
            self.is_hungry = True
        if next_state == 99:
            sys.stderr.write('unknown: {}\n'.format(hexcode(byte)))
        self.state = next_state
        
    def __str__(self):
        ret = ''
        if self.prefix:
            ret+= '[{}] '.format(hexcode(self.prefix))
        ret += ''.join([hexcode(b) for b in self.opcode]) + ' '
        ret += ''.join([hexcode(b) for b in self.op1]) + ' '
        return ret


class x86:
    def __init__(self,mem):
        self.registers = {}
        self.mem = mem

    def step(self):
        loc = self.registers['eip']
        dec = decoder()
        
        while dec.hungry():
            byte = self.mem[self.registers['eip']]
            self.registers['eip'] += 1
            dec.eat(byte)
            
        sys.stderr.write(hex(loc)+': ')
        sys.stderr.write(str(dec))
        sys.stderr.write('\n')
