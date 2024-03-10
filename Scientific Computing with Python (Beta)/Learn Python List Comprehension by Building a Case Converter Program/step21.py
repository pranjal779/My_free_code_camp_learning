def convert_to_snake_case(pascal_or_camel_cased_string):
  '''
  Step 21
Get rid of the commented lines of code inside the convert_to_snake_case() function to clean up the function definition.
  '''
    snake_cased_char_list = []
    for char in pascal_or_camel_cased_string:
        if char.isupper():
            converted_character = '_' + char.lower()
            snake_cased_char_list.append(converted_character)
        else:
            snake_cased_char_list.append(char)
    snake_cased_string = ''.join(snake_cased_char_list)
    clean_snake_cased_string = snake_cased_string.strip('_')

    return clean_snake_cased_string

'''
Congratulations, your code passes. Submit your code to continue.

"Checkmate!"

95% complete
Learn Python List Comprehension by Building a Case Converter Program
95% complete

'''

    snake_cased_char_list = [
        '_' + char.lower() if char.isupper()
        else char
        for char in pascal_or_camel_cased_string
    ]

    return ''.join(snake_cased_char_list).strip('_')

def main():
    print(convert_to_snake_case('aLongAndComplexString'))

if __name__ == '__main__':
    main()

# Output:
# >>> a_long_and_complex_string
