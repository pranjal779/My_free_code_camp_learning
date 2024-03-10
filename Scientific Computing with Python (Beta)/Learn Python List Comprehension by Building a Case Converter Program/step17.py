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
Step 17
Inside the space you left between the pair of square braces, you can describe the value that you would like to include in the list based on a given condition.

snake_cased_char_list = [
    '_' + char.lower() if char.isupper()
]
Python will interpret this expression as "append '_' + char.lower() to the list if char is in uppercase" and this will convert the case for the capital letters in the input string.

Start by adding this line within the square braces.
'''

    snake_cased_char_list = [
        '_' + char.lower() if char.isupper()
    ]

'''
Congratulations, your code passes. Submit your code to continue.

"That's the way it's done!"

77% complete
Learn Python List Comprehension by Building a Case Converter Program
77% complete

'''
def main():
    print(convert_to_snake_case('aLongAndComplexString'))

if __name__ == '__main__':
    main()
