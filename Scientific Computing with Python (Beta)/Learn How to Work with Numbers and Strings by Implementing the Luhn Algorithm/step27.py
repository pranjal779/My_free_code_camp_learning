def verify_card_number(card_number):
    sum_of_odd_digits = 0
    card_number_reversed = card_number[::-1]
    odd_digits = card_number_reversed[::2]

    for digit in odd_digits:
        sum_of_odd_digits += int(digit)

# Step 27
# To prevent the multiplication of one digit from being greater than 9, within the even digit loop, 
# add an if statement that checks if number is greater than or equal to 10. If it is, print number.

    sum_of_even_digits = 0
    even_digits = card_number_reversed[1::2]
    for digit in even_digits:
        number = int(digit) * 2
        if number >= 10:
            print(number)


# "Hasta la vista, challenge!"

# 77% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 77% complete

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    verify_card_number(translated_card_number)

main()


# Output:
# >>> 10
