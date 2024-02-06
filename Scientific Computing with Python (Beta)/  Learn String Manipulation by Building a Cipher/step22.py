'''

Step 22
A loop allows you to systematically go through a sequence of elements and execute actions on each one.

In this case, you'll employ a for loop. Here's how you can iterate over text:

for i in text:
for is the keyword denoting the loop type. i is a variable that sequentially takes the value of the elements in text. The statement ends with a colon, :.

Below the line where you declared alphabet, write a for loop to iterate over text. Use i as the loop variable.


'''

text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'
for i in text:
    print(i)


'''
output:
>>> H
>>> e
>>> l
>>> l
>>> o
>>>  
>>> W
>>> o
>>> r
>>> l
>>> d


'''


text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'
for i in text:
    print(alphabet)

'''output:
>>> abcdefghijklmnopqrstuvwxyz
>>> abcdefghijklmnopqrstuvwxyz
>>> abcdefghijklmnopqrstuvwxyz
>>> abcdefghijklmnopqrstuvwxyz
>>> abcdefghijklmnopqrstuvwxyz
>>> abcdefghijklmnopqrstuvwxyz
>>> abcdefghijklmnopqrstuvwxyz
>>> abcdefghijklmnopqrstuvwxyz
>>> abcdefghijklmnopqrstuvwxyz
>>> abcdefghijklmnopqrstuvwxyz
>>> abcdefghijklmnopqrstuvwxyz

'''

text = 'Hello World'
shift = 3
alphabet = 'abcdefghijklmnopqrstuvwxyz'
for i in alphabet:
    print(i)


''''
output:
>>> a
>>> b
>>> c
>>> d
>>> e
>>> f
>>> g
>>> h
>>> i
>>> j
>>> k
>>> l
>>> m
>>> n
>>> o
>>> p
>>> q
>>> r
>>> s
>>> t
>>> u
>>> v
>>> w
>>> x
>>> y
>>> z

'''
