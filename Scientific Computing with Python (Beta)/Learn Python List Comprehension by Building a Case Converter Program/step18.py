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
Step 18
When you start a list comprehension with an if statement like this, Python requires you to also add an else clause to the expression.

snake_cased_char_list = [
    '_' + char.lower() if char.isupper()
    else char
]
Python will interpret this updated expression as "append '_' + char.lower() to the list if char is in uppercase, append char as is otherwise" and this covers the case for both the capital and lowercase letters in the input string.

Add an else clause inside the pair of square braces.
'''

    snake_cased_char_list = [
        '_' + char.lower() if char.isupper()
        else char
    ]

'''
Congratulations, your code passes. Submit your code to continue.

"Escape velocity reached!"

82% complete
Learn Python List Comprehension by Building a Case Converter Program
82% complete
'''

def main():
    print(convert_to_snake_case('aLongAndComplexString'))

if __name__ == '__main__':
    main()

