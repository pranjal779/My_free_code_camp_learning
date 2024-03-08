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

# Step 11
# Since the function is now complete, put it to use inside another function. 
# Create a new function called main() on the same level as the convert_to_snake_case() function.

def main():
    pass

# "You better believe it!"

# 50% complete
# Learn Python List Comprehension by Building a Case Converter Program
# 50% complete
