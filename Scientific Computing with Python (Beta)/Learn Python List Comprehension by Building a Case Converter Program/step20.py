def convert_to_snake_case(pascal_or_camel_cased_string):
    # snake_cased_char_list = []
    # for char in pascal_or_camel_cased_string:
    #     if char.isupper():
    #       converted_character = '_' + char.lower()
    #       snake_cased_char_list.append(converted_character)
    #     else:
    #         snake_cased_char_list.append(char)
    # snake_cased_string = ''.join(snake_cased_char_list)
    # clean_snake_cased_string = snake_cased_string.strip('_')

    # return clean_snake_cased_string

'''
Step 20
You will still need to join the list elements into a string, strip off any dangling underscores and return the string. 
Even though you can do that like you did earlier, let's see a shorter alternative.

return ''.join(snake_cased_char_list).strip('_')
This single line of code will join the list of characters into a string, strip off any dangling underscores, and return the resulting string. 
Add this line on the same level as the snake_cased_char_list variable and inside the convert_to_snake_case() function.
'''
  
    snake_cased_char_list = [
        '_' + char.lower() if char.isupper()
        else char
        for char in pascal_or_camel_cased_string
    ]

    return ''.join(snake_cased_char_list).strip('_')

'''
Congratulations, your code passes. Submit your code to continue.

"You're crushing it!"

91% complete
Learn Python List Comprehension by Building a Case Converter Program
91% complete
'''

def main():
    print(convert_to_snake_case('aLongAndComplexString'))

if __name__ == '__main__':
    main()

# Output:
# >>> a_long_and_complex_string
