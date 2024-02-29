def verify_card_number(card_number):
    sum_of_odd_digits = 0
    card_number_reversed = card_number[::-1]
    odd_digits = card_number_reversed[::2]

    for digit in odd_digits:
        sum_of_odd_digits += int(digit)

#   Step 26
# The next part of the Luhn Algorithm is to multiply all the even digits by 2.

# Within the even digit for loop, replace the print call with a variable named number and assign it the value of digit multiplied by 2.

    sum_of_even_digits = 0
    even_digits = card_number_reversed[1::2]
    for digit in even_digits:
        number = int(digit) * 2

#   "Here's looking at you, Code!"

# 74% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 74% complete

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    verify_card_number(translated_card_number)

main()
