# new step 06
'''
Step 6
The insert method can add an element at any position in a list. The first argument is the position at which the element has to be added, and the second argument is the element to add. For example, here's how to add a new element in the third position of example_list:

Example Code
example_list = [4, 5, 6, 7]

example_list.insert(2, 5.5)

print(example_list) # [4, 5, 5.5, 6, 7]
Using insert(), add 1 to my_list in the proper position so that it is counting upward, then print the list.
'''

my_list = [1, 2]

my_list.append(3)
print(my_list)

print(my_list[0])

my_list[0] = 0
print(my_list)

my_list.insert(1, 1)
print(my_list)



'''
[1, 2, 3]
1
[0, 2, 3]
[0, 1, 2, 3]

// running tests
// tests completed
// console output
[1, 2, 3]
1
[0, 2, 3]
[0, 1, 2, 3]
'''
