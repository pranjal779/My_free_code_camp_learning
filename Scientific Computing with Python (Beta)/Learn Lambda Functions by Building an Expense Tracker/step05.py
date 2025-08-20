'''
Step 5
Python lists are mutable which means that the value of the list items can be changed. You can change the value of an element using the bracket notation.

Example Code
example_list = [4, 5, 6, 7]
example_list[1] = 'oh'
This will make example_list have value of [4, 'oh', 6, 7].

Change the first element of my_list to 0, then print the list to check the value.
'''

my_list = [1, 2]

my_list.append(3)
print(my_list)

my_list[0] = 0
print(my_list)


'''
[1, 2, 3]
[0, 2, 3]

'''
