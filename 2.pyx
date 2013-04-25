%cython

def __main__():
	cdef int number, sumr, r
    number = 542
    sumr = 0
    for r in range(int(number)):
	sumr += r*r
    print(sumr)
          
if __name__ == '__main__':
    __main__()
    timeit("__main__()")
	# 617 microseconds