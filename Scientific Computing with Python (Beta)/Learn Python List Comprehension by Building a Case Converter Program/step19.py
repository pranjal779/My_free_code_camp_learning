def convert_to_snake_case(pascal_or_camel_cased_string):
    # snake_cased_char_list = []
    # for char in pascal_or_camel_cased_string:
    #     if char.isupper():
    #       converted_character = '_' + char.lower()
    #       snake_cased_char_list.append(converted_character)
    #     else:
    #         snake_cased_char_list.append(char)
    # snake_cased_string = ''.join(snake_cased_char_list)
    # clean_snake_cased_string = snake_cased_string.strip('_')

    # return clean_snake_cased_string
'''
Step 19
The final piece of the puzzle is the input string itself. The list comprehension needs to know about the object it'll iterate upon.

In this case, you need to iterate upon all the characters of the string.

snake_cased_char_list = [
    '_' + char.lower() if char.isupper()
    else char
    for char in pascal_or_camel_cased_string
]
And there you have it. These three lines of code do the same task as the for loop you worked on previously while being cleaner and somewhat faster.

Add this last line of code to iterate over the characters of the string in your list comprehension and make sure that you're writing it within the pair of square braces.
'''

    snake_cased_char_list = [
        '_' + char.lower() if char.isupper()
        else char
        for char in pascal_or_camel_cased_string
    ]

'''
Congratulations, your code passes. Submit your code to continue.

"What sorcery is this?"

86% complete
Learn Python List Comprehension by Building a Case Converter Program
86% complete
'''

def main():
    print(convert_to_snake_case('aLongAndComplexString'))

if __name__ == '__main__':
    main()


# Output:
# >>> None
