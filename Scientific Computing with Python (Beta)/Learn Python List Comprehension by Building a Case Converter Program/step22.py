def convert_to_snake_case(pascal_or_camel_cased_string):

    snake_cased_char_list = [
        '_' + char.lower() if char.isupper()
        else char
        for char in pascal_or_camel_cased_string
    ]

    return ''.join(snake_cased_char_list).strip('_')

'''
Step 22
Finally try out this new implementation by executing the program. Change the input string to 'IAmAPascalCasedString' and see if it comes out as 'i_am_a_pascal_cased_string', even though that's a lie.

If you've done everything correctly, you should see the input string converted into snake case, like before.

Congratulations! Now your convert_to_snake_case() function is ready.
'''

def main():
    print(convert_to_snake_case('IAmAPascalCasedString'))

 '''
 Congratulations, your code passes. Submit your code to continue.

"Target acquired."

100% complete
Learn Python List Comprehension by Building a Case Converter Program
100% complete

 '''

if __name__ == '__main__':
    main()
