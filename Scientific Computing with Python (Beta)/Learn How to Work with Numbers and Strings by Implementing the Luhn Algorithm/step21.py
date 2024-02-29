def verify_card_number(card_number):
    sum_of_odd_digits = 0
    card_number_reversed = card_number[::-1]
    odd_digits = card_number_reversed[::2]

# Step 21
# Currently, your script throws a TypeError because you are trying to add a string to an integer. You can fix this by converting the digit variable to an integer before adding it to sum_of_odd_digits, using the built-in int function:

# my_string = '123'
# my_int = int(my_string)
# Convert the digit variable to an integer before adding it to sum_of_odd_digits. Then, move the print call to the end of the verify_card_number function to print the value of sum_of_odd_digits.

    for digit in odd_digits:
        sum_of_odd_digits += int(digit)
        print(sum_of_odd_digits)



# "Power level? It's over 9000!"

# 60% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 60% complete

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    verify_card_number(translated_card_number)

main()

# Output:
# >>> 2
# >>> 3
# >>> 8
# >>> 13
# >>> 14
# >>> 15
# >>> 16
# >>> 17
