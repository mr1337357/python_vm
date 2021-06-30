class virtual_memory:

    class memory_area():
        def __init__(self,start,length):
            self.start = start
            self.length = length
            self.end = start+length-1
            self.mem = [0] * length

    def __init__(self):
        #todo: faster lookup than list
        self.map = []
    
    def add_area(self,start,length):
        area = self.memory_area(start,length)

