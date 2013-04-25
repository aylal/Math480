%cython
"""
Ayla Lampard  
Math 480  

Takes an integer greater than or equal to 2 and outputs the prime factorization.  

Example: Input: 651   
Output: 3 x 7 x 31
"""

cdef clean_list(int p,factors):
    while p in factors:
        factors.remove(p)
    return factors

def __main__():
	cdef int rawnumber, x, number
    rawnumber = 651061
    factors = []
    fact_disp = ''
    x = 2
    number = rawnumber
    while x != number + 1:
        if number % x == 0:
            factors.append(x)
            number = number / x
            x = 2
        else:
            x += 1
                
    else:
        while factors != []:
            p = factors[0]
            n = factors.count(p)
            if n == 1:
                fact_disp = fact_disp + str(p) 
                factors = clean_list(p,factors)
            else:
                fact_disp = fact_disp + str(p) + '^' + str(n)
                factors = clean_list(p,factors)
                
            if factors == []:
                break
            else:
                fact_disp = fact_disp + ' x ' 
                    
        print('The prime factorization of ' + str(rawnumber) + ' is ' + fact_disp + '.')
            
if __name__ == '__main__':
    __main__()
    timeit("__main__()")