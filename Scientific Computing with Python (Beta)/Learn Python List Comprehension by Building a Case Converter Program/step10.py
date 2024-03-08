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

# Step 10
# Now all that is left to complete this function is to return the clean_snake_cased_string from the function. 
# So, go ahead and return the string by adding a return statement on the same level as the clean_snake_cased_string variable.
  
    return clean_snake_cased_string

# "You're a shooting star!"

# 45% complete
# Learn Python List Comprehension by Building a Case Converter Program
# 45% complete
