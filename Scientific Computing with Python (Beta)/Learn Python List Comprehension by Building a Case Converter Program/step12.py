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

# Step 12
# Inside the main() function, replace pass with a convert_to_snake_case() call. 
# Pass the string 'aLongAndComplexString' as input to the function and print out the output using the print() function.

def main():
    print(convert_to_snake_case('aLongAndComplexString'))

# "Walk on that sunshine!"

# 55% complete
# Learn Python List Comprehension by Building a Case Converter Program
# 55% complete
