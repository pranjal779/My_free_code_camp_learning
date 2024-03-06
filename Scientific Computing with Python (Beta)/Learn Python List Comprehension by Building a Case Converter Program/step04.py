'''
Step 4
Uppercase characters in camel case or pascal case indicate the start of new words.

Inside the loop body, use an if statement in conjunction with the .isupper() string method to check for uppercase characters 
and move pass inside the new if statement.
'''

def convert_to_snake_case(pascal_or_camel_cased_string):
    snake_cased_char_list = []
    for char in pascal_or_camel_cased_string:
        if char.isupper():
            pass

'''
Congratulations, your code passes. Submit your code to continue.

"You did it!"

18% complete
Learn Python List Comprehension by Building a Case Converter Program
18% complete
'''
