'''
Step 6
Still within the if statement body, use the .append() list method to add the converted character to the list you created earlier.

snake_cased_char_list.append(converted_character)
The .append() method adds a given object to the end of the list you invoke it on.

'''
def convert_to_snake_case(pascal_or_camel_cased_string):
    snake_cased_char_list = []
    for char in pascal_or_camel_cased_string:
        if char.isupper():
            converted_character = '_' + char.lower()
            snake_cased_char_list.append(converted_character)
'''

Congratulations, your code passes. Submit your code to continue.

"You've got guts!"

27% complete
Learn Python List Comprehension by Building a Case Converter Program
27% complete
'''
