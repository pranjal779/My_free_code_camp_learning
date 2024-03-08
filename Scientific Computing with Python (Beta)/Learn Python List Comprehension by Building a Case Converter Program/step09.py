def convert_to_snake_case(pascal_or_camel_cased_string):
    snake_cased_char_list = []
    for char in pascal_or_camel_cased_string:
        if char.isupper():
            converted_character = '_' + char.lower()
            snake_cased_char_list.append(converted_character)
        else:
            snake_cased_char_list.append(char)

'''
Step 9
Strings in pascal case start with a capital character. Since you've converted all such characters to lowercase and prepended an underscore to them, chances are, the converted snake case string has a dangling underscode at the start.

The easiest way to strip such unwanted character is by using the .strip() string method and passing an underscore to the method as argument.

snake_cased_string.strip('_')
Make sure to save the resulting string in a variable named clean_snake_cased_string on the same level as the snake_cased_string variable.
'''
            snake_cased_char_list.append(char)
    snake_cased_string = ''.join(snake_cased_char_list)
    clean_snake_cased_string = snake_cased_string.strip('_')

'''
Congratulations, your code passes. Submit your code to continue.

"Your powers combined!"

41% complete
Learn Python List Comprehension by Building a Case Converter Program
41% complete
'''
