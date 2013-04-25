def __main__():
    number = 542
    sumr = 0
    for r in range(int(number)):
		sumr += r*r
    print(sumr)
          
if __name__ == '__main__':
    __main__()
    timeit("__main__()")
	# 614 microseconds

	