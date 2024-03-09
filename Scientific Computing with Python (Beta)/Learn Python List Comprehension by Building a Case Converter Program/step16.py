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
Step 16
Start by replacing pass with the variable snake_cased_char_list and assign it an empty list. Use the square brace notation to create the list but do not put anything between the braces.

Put the braces in separate lines so that you have some space between them, where you can work on the code for the list comprehension.
'''
  
    snake_cased_char_list = [

    ]

'''
Congratulations, your code passes. Submit your code to continue.

"Hyper Combo Finish!"

73% complete
Learn Python List Comprehension by Building a Case Converter Program
73% complete
'''



def main():
    print(convert_to_snake_case('aLongAndComplexString'))

if __name__ == '__main__':
    main()
