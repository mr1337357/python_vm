
class disfile:

    def __init__(self,filename):
        self.filename = filename

    def load(self):
    
        self.instructions = {}

        asmfile = open(self.filename,'rb')
        
        line = asmfile.readline()
        while len(line) > 0:
            line = asmfile.readline()