from vmem import virtual_memory
from elf import elf_file
from x86 import x86

if __name__ == '__main__':

    import sys

    exe = elf_file(sys.argv[1])
    exe.load()
    mem = virtual_memory()
    for section in exe.sections:
        if section.sh_addr > 0:
            mem.add_area(section.sh_addr,section.sh_size)
            mem.mem_write(section.sh_addr,exe.read_section(section))

    cpu = x86(mem)
    cpu.registers['eip'] = exe.e_entry
    while True:
        cpu.step()