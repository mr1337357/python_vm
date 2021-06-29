E_TYPES = {0: 'None',1: 'Reloc',2: 'Exec',3: 'Shared',4: 'Core'}
E_MACHINES = {0: 'None',1: 'M32',2: 'SPARC',3: 'ia32',4: '68k',5: '88k',62: 'amd64'}
SH_TYPES = {0: 'None',1: 'SH_PROGBITS',2: 'SH_SYMTAB'}

def dump_bytes(block):
    out = ''
    for byte in block:
        out += hex(byte)[2:]+' '
    return out
class elf_file():
    def __init__(self,filename):
        self.filename = filename
    
    class elf_section():

        def __repr__(self):
            ret = ''
            ret += '\tsh_name: {}\n'.format(self.sh_name)
            ret += '\tsh_type: {}\n'.format(hex(self.sh_type))
            ret += '\tsh_flags: {}\n'.format(hex(self.sh_flags))
            ret += '\tsh_addr: {}\n'.format((hex(self.sh_addr)))
            return ret
    
    def load_section_table(self):
        with open(self.filename,'rb') as infile:
            infile.seek(self.e_shoff)
            self.sections = []
            for secnum in range(self.e_shnum):
                sec = self.elf_section()
                sec.sh_name = self.read_long(infile)
                sec.sh_type = self.read_long(infile)
                sec.sh_flags = self.read_long(infile)
                sec.sh_addr = self.read_long(infile)
                sec.sh_offset = self.read_long(infile)
                sec.sh_size = self.read_long(infile)
                sec.sh_link = self.read_long(infile)
                sec.sh_info = self.read_long(infile)
                sec.sh_addralign = self.read_long(infile)
                sec.sh_entsize = self.read_long(infile)
                self.sections.append(sec)
    def load(self):
        with open(self.filename,'rb') as infile:
            self.ident = {}
            ident = infile.read(16)
            self.ident['byte'] = ident
            if ident[0:4] != b'\x7fELF':
                raise Exception()
            self.ident['ei_class'] = ident[4]
            self.ident['ei_data'] = ident[5]
            self.ident['ei_version'] = ident[6]
            #todo: adjust for different classes with different widths
            if self.ident['ei_data'] == 1:
                #lsb
                self.read_short = lambda file: file.read(1)[0]+file.read(1)[0]*256
                self.read_byte = lambda file: file.read(1)[0]
                self.read_long = lambda file: file.read(1)[0]+file.read(1)[0]*256+file.read(1)[0]*65536+file.read(1)[0]*16777216
            self.e_type = self.read_short(infile)
            self.e_machine = self.read_short(infile)
            self.e_version = self.read_long(infile)
            self.e_entry = self.read_long(infile)
            self.e_phoff = self.read_long(infile)
            self.e_shoff = self.read_long(infile)
            self.e_flags = self.read_long(infile)
            self.e_ehsize = self.read_short(infile)
            self.e_phentsize = self.read_short(infile)
            self.e_phnum = self.read_short(infile)
            self.e_shentsize = self.read_short(infile)
            self.e_shnum = self.read_short(infile)
            self.e_shstrndx = self.read_short(infile)
        self.load_section_table()
            
    def dump(self):
        print('ident: ' + dump_bytes(self.ident['byte']))
        print('\tei_class: ' + str(self.ident['ei_class']))
        print('\tei_data: ' + str(self.ident['ei_data']))
        print('e_type: {} ({})'.format(self.e_type,E_TYPES[self.e_type]))
        print('e_machine: {} ({})'.format(self.e_machine,E_MACHINES[self.e_machine]))
        print('e_version: {} ({})'.format(self.e_version,'current' if self.e_version == 1 else 'None'))
        print('e_entry: {}'.format(hex(self.e_entry)))
        print('e_phoff: {}'.format(hex(self.e_phoff)))
        print('e_shoff: {}'.format(hex(self.e_shoff)))
        print('e_flags: {}'.format(hex(self.e_flags)))
        print('e_ehsize: {}'.format(hex(self.e_ehsize)))
        print('e_shentsize: {}'.format(self.e_shentsize))
        print('e_shnum: {}'.format(self.e_shnum))
        for i in range(self.e_shnum):
            print(self.sections[i])
            
if __name__ == '__main__':
    import sys
    if len(sys.argv) < 2:
        sys.stderr.write('need filename\n')
        sys.exit(1)
    filename = sys.argv[1]
    ef = elf_file(filename)
    ef.load()
    ef.dump()