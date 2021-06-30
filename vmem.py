class virtual_memory:

    class memory_area():
        def __init__(self,start,length):
            self.start = start
            self.length = length
            self.end = start+length-1
            self.mem = [0] * length

        def __repr__(self):
            return 'mem({}-{})'.format(hex(self.start),hex(self.end))

    def __init__(self):
        #TODO: faster lookup than list
        self.table = []
    
    def add_area(self,start,length):
        area = self.memory_area(start,length)
        self.table.append(area)

    def find_area(self,addr):
        for area in self.table:
            if area.start < addr:
                if area.end >= addr:
                    return area
        return None

    def mem_write(self,addr,mem):
        area = self.find_area(addr)
        #TODO: bounds check end
        start = addr - area.start
        for byte in mem:
            area.mem[start] = byte
            start += 1

    def mem_read(self,addr,length):
        area = self.find_area(addr)
        #TODO: bounds check end
        start = addr - area.start
        rb = []
        for i in range(length):
            rb.append(area.mem[start+i])
        return rb

    def __setitem__(self,addr,val):
        area = self.find_area(addr)
        area.mem[addr-area.start] = val

    def __getitem__(self,addr):
        area = self.find_area(addr)
        return area.mem[addr-area.start]

    def __repr__(self):
        out = 'virtual memory:\n'
        for area in self.table:
            out += str(area)
        return out

if __name__ == '__main__':
    vm = virtual_memory()
    vm.add_area(0x8000,512)
    print(vm)
    vm[0x8014] = 0x55
    print(vm.mem_read(0x8010,0x10))
