import numpy
def translationMatrix(tx=0,ty=0,tz=0):
    return numpy.matrix([[1,0,0,tx],
                         [0,1,0,ty],
                         [0,0,1,tz],
                         [0,0,0,1]])
matrix=translationmatrix(1,1,1)
print(matrix)
