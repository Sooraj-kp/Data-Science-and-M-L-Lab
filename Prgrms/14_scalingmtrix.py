import numpy
def translationMatrix(tx=0,ty=0):
    return numpy.matrix([[1,0,tx],
                         [0,1,ty],
                         [0,0,1]])
matrix=translationMatrix(1,1)
print(matrix)
