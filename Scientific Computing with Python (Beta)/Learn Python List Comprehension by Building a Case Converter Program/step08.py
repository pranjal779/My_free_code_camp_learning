'''
Step 8
By the end of the loop, snake_cased_char_list should contain all the converted characters in correct order. Use the .join() string method to convert the list of characters into a string.

''.join(snake_cased_char_list)
This joins the characters from the list to the empty string on which you called the .join() method. Save the result in a variable named snake_cased_string on the same level as the snake_cased_char_list variable.
'''
  
def convert_to_snake_case(pascal_or_camel_cased_string):
    snake_cased_char_list = []
    for char in pascal_or_camel_cased_string:
        if char.isupper():
            converted_character = '_' + char.lower()
            snake_cased_char_list.append(converted_character)
        else:
            snake_cased_char_list.append(char)
            snake_cased_string = ''.join(snake_cased_char_list);

'''
Congratulations, your code passes. Submit your code to continue.

"Everything's coming up Milhouse!"

36% complete
Learn Python List Comprehension by Building a Case Converter Program
36% complete
'''
