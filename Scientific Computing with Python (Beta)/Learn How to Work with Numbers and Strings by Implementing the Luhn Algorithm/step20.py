# Step 20
# Within the for loop, use the += operator to add the digit to the sum_of_odd_digits variable.

def verify_card_number(card_number):
    sum_of_odd_digits = 0
    card_number_reversed = card_number[::-1]
    odd_digits = card_number_reversed[::2]

    for digit in odd_digits:
        print(digit)
        sum_of_odd_digits += digit

# "Legen - wait for it - dary!"

# 63% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 63% complete

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    verify_card_number(translated_card_number)

main()

# Output:
# >>> 2
