def verify_card_number(card_number):
    sum_of_odd_digits = 0
    card_number_reversed = card_number[::-1]
    odd_digits = card_number_reversed[::2]

    for digit in odd_digits:
        sum_of_odd_digits += int(digit)
    print(sum_of_odd_digits)

# Step 24
# Loop over the even digits and print each to the console.

    sum_of_even_digits = 0
    even_digits = card_number_reversed[1::2]
    for even_digit in even_digits:
        print(even_digit)


# "Nice one!"

# 69% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 69% complete

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    verify_card_number(translated_card_number)

main()

# Output
# >>> 17
# >>> 4
# >>> 1
# >>> 5
# >>> 4
# >>> 1
# >>> 1
# >>> 1
# >>> 4
