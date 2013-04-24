%cython

from time import *

def time_func(f):
    start = clock()
    f()
    end = clock()
    print "time taken:", (end-start)*(10 ** 9), "nanoseconds"
    
cdef is_posint(long x):
    if x <= 1:
        return False
    else:
        return True

cdef clean_list(long p, factors):
    while p in factors:
        factors.remove(p)
    return factors

def run(long rawnumber):
    factors = []
    fact_disp = ''
    
    while (not is_posint(rawnumber)):
        rawnumber = raw_input("The number you entered was not a positive integer greater than or equal to 2. Enter an integer: ")
    else:
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
            
time_func(lambda: run(897689546689689))