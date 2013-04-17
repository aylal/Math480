"""

"""

def is_posint(x):
    try: 
        int(x)
        if int(x) <= 1:
            return False
        else:
            return True
    except ValueError:
        return False

def clean_list(p,factors):
    while p in factors:
        factors.remove(p)
    return factors

def __main__():
    rawnumber = raw_input("Enter a positive integer greater than or equal to 2: ")
    factors = []
    fact_disp = ''
    
    while (not is_posint(rawnumber)):
        rawnumber = raw_input("The number you entered was not a positive integer greater than or equal to 2. Enter an integer: ")
    else:
        x = 2
        number = int(rawnumber)
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
                    
            print('The prime factorization of ' + rawnumber + ' is ' + fact_disp + '.')
            
if __name__ == '__main__':
    __main__()