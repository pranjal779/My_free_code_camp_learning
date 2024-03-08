'''
Step 7
Add an else clause on the same level as the existing if statement, inside the for loop. Add characters that are already in lowercase to the list of converted characters inside the body of the else clause.
'''

def convert_to_snake_case(pascal_or_camel_cased_string):
    snake_cased_char_list = []
    for char in pascal_or_camel_cased_string:
        if char.isupper():
            converted_character = '_' + char.lower()
            snake_cased_char_list.append(converted_character)
        else:
            snake_cased_char_list.append(char)

'''
Congratulations, your code passes. Submit your code to continue.

"We knew you could do it!"

32% complete
Learn Python List Comprehension by Building a Case Converter Program
32% complete
'''
