'''
Step 5
Inside the if statement body, you need to convert any uppercase character to lowercase and prepend an underscore to this lowercase character.

Use the .lower() string method to convert uppercase characters to lowercase characters. You can then concatenate an underscore to the character using the plus sign.

'_' + char.lower()
Assign the modified character to a variable named converted_character inside the if statement body.
'''

def convert_to_snake_case(pascal_or_camel_cased_string):
    snake_cased_char_list = []
    for char in pascal_or_camel_cased_string:
        if char.isupper():
            converted_character = '_' + char.lower() # task for step 5

'''
Congratulations, your code passes. Submit your code to continue.

"Sonic Boom!"
Learn Python List Comprehension by Building a Case Converter Program
23% complete

'''
