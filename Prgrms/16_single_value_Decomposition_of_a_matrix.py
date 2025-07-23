from numpy import matrix
from numpy import matmul
from numpy import diag
from scipy.linalg import svd
A=matrix([[1,2,3],[4,5,6],7,8,9]])
print(A)
U,S,V=svd(A)
print(U)
print(S)
print(V)
sigma=diag(S)
print(sigma)
B=matmul(U,matmul(sigma,V))
print(B)
