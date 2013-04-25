%cython
import random
from time import *
import cProfile
 
cdef zero(int m,int n):
    new_matrix = [[0 for row in range(n)] for col in range(m)]
    return new_matrix
 
cdef rand(int m,int n):
    new_matrix = [[random.random() for row in range(n)] for col in range(m)]
    return new_matrix

cdef mult(matrix1,matrix2):
    new_matrix = zero(len(matrix1),len(matrix2[0]))
    for int i in range(len(matrix1)):
        for j in range(len(matrix2[0])):
            for k in range(len(matrix2)):
                new_matrix[i][j] += matrix1[i][k]*matrix2[k][j]
    return new_matrix
 
cdef profile_mult(matrix1,matrix2):
    cProfile.run('matrix.mult(' + matrix1 + ',' + matrix2 + ')')

def __main__():
    a = rand(4,4)
	b = rand(4,4)
	c = mult(a,b)

if __name__ == '__main__':
    __main__()
    timeit("__main__()")
	#124 miliseconds