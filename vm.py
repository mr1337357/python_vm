from vmem import virtual_memory
#from elf import elf_file
from disfile import disfile
from x86 import x86

if __name__ == '__main__':

    import sys

    exe = disfile(sys.argv[1])
    exe.load()
    mem = virtual_memory()



    cpu = x86(mem)
    cpu.registers['eip'] = exe.e_entry
    while True:
        cpu.step()