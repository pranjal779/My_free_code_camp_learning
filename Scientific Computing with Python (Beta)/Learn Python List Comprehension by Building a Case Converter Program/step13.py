def convert_to_snake_case(pascal_or_camel_cased_string):
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

# Step 13
# Before running the main() function, you need to make sure that the file is running as a script. 
# Add an if statement on the same level as the two existing functions and check whether __name__ == '__main__'.

# Remember to use pass to fill the if statement body.

def main():
    print(convert_to_snake_case('aLongAndComplexString'))

if __name__ == '__main__':
    pass

# "To the nines!"

# 59% complete
# Learn Python List Comprehension by Building a Case Converter Program
# 59% complete
