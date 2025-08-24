'''
Step 7
The pop() method can be used to remove an element from a list. By default, it removes the last element of the list. You can pass an index as the argument to the method, and it will remove the element at the given index.

Example Code
fruits_list = ["cherry", "lemon", "tomato", "apple", "orange"]

fruits_list.pop(2)

print(fruits_list) # ["cherry", "lemon", "apple", "orange"]
In this case, fruits_list.pop(2) removes the element at index 2 of the list.

Use pop() to remove the last element from my_list, then print my_list.
'''

my_list = [1, 2]

my_list.append(3)
print(my_list)

print(my_list[0])

my_list[0] = 0
print(my_list)

my_list.insert(1, 1)
print(my_list)

my_list.pop(3)
print(my_list)


'''
[1, 2, 3]
1
[0, 2, 3]
[0, 1, 2, 3]
[0, 1, 2]

// running tests
// tests completed
// console output
[1, 2, 3]
1
[0, 2, 3]
[0, 1, 2, 3]
[0, 1, 2]
'''
