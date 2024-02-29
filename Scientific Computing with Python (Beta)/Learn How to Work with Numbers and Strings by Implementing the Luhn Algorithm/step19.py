# Step 19
# Use a for loop to iterate over each digit in the odd_digits list. Move your print call from the previous step into the for loop, and change it to print each digit.

def verify_card_number(card_number):
    sum_of_odd_digits = 0
    card_number_reversed = card_number[::-1]
    odd_digits = card_number_reversed[::2]
    for digit in odd_digits:
        print(digit)


# "That's the way it's done!"

# 54% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 54% complete

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    verify_card_number(translated_card_number)

main()
