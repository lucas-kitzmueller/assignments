# Write a program that defines four functions (multiply, add, subtract, 
# and divide). These functions should not print anything, they should 
# simply perform a mathematical operation on the two arguments and return 
# the value.

def multiply(a,b):
    return a * b

def add(a,b):
	return a + b

def subtract(a,b):
	return a - b

def divide(a,b): 
	return a/b

# testing with some examples
print("I'm going use the calculator functions to multiply 5 and 6")
x = multiply(5,6)
print(x)

print("dividing 20 by 5")
x = divide(20,5)
print(x)

def square(a):
	return a**2

def cube(a):
	return a**3

def square_n_times(a,b):
	return a**b

# testing
print("taking cube of 2 with square_n_times")
x = square_n_times(2,3)
print(x)
