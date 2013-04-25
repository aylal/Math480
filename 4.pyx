%cython
from itertools import *
import random
from time import *

cdef det(M,prod=1):
    dim = len(M)
    if dim == 1:
        return prod * M.pop().pop()
    it = product(xrange(1,dim),repeat=2)
    prod *= M[0][0]
    return det([[M[x][y]-M[x][0]*(M[0][y]/M[0][0]) for x,y in islice(it,dim-1)] for i in xrange(dim-1)],prod)

cdef rand(m,n):
    new_matrix = [[random.random() for row in range(n)] for col in range(m)]
    return new_matrix

def __main__():
    print(det(rand(4,4)))

if __name__ == '__main__':
    __main__()
	timeit("__main__()")
	#61.4 microseconds