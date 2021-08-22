def combine_maps(*args):
    out = {}
    for m in args:
        for k in m:
            out[k]=m[k]
    return out
r_ops = {0:''}
rfunct = [0x21]
i_ops = {1:''}
j_ops = {}

ops = combine_maps(r_ops,i_ops,j_ops)

def read32(vmem,addr):
    val = vmem.mem_read(addr,4)
    rv = val[0]*1+val[1]*256+val[2]*65536+val[3]*16777216
    return rv

class mips:
    def __init__(self,mem):
        self.pc = 0
        self.registers = [0]*32
        self.mem = mem
    
    def handle_r(self,ir):
        op = ir>>26
        rs = (ir>>21) & 0x1F
        rt = (ir>>16) & 0x1F
        rd = (ir>>11) & 0x1F
        shamt = (ir>>6) & 0x1F
        funct = ir & 0x3F
        if op != 0:
            raise NotImplementedError()
        if not funct in rfunct:
            print('rfunct: {}'.format(hex(funct)))
            raise NotImplementedError()
        if funct == 0x21:
            #addu
            self.registers[rd] = self.registers[rs] + self.registers[rt]
    
    def handle_i(self,ir):
        op = ir >> 26
        rs = (ir>>21) & 0x1F
        rt = (ir>>16) & 0x1F
        imm = ir & 0xFFFF
        
    
    def handle_j(self,ir):
        
    
    def step(self):
        global ops
        ir = read32(self.mem,self.pc)
        op = ir>>26
        if not op in ops:
            print('TODO: Trap (invalid instruction')
            print('opcode: {}'.format(hex(op)))
            raise NotImplementedError()
        if op in r_ops:
            self.handle_r(ir)
        if op in i_ops:
            self.handle_i(ir)
        if op in j_ops:
            self.handle_j(ir)
        #print(hex(ir))
        self.pc += 4
