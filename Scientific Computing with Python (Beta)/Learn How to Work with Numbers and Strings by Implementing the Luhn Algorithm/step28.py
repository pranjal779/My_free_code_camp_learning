def verify_card_number(card_number):
    sum_of_odd_digits = 0
    card_number_reversed = card_number[::-1]
    odd_digits = card_number_reversed[::2]

    for digit in odd_digits:
        sum_of_odd_digits += int(digit)


# Step 28
# Part of the algorithm is to double every second digit, starting from the right. 
# If the result of doubling the number is greater than or equal to 10, add the two digits together. 
# For example, if the digit is 6, double it to get 12. Add 1 and 2 together to get 3. 
# You can do this by using integer division to get the first digit and the modulus operator (%) to get the second digit:

# my_number = 12
# first_digit = my_number // 10
# second_digit = my_number % 10
# Integer division results in the quotient of the division, rounded down to the nearest integer.

# Within the if statement, assign number the result of number // 10 (integer division) plus the modulus of number and 10.

    sum_of_even_digits = 0
    even_digits = card_number_reversed[1::2]
    for digit in even_digits:
        number = int(digit) * 2
        if number >= 10:
            print(number)
            number = (number // 10) + (number % 10)


# "You've got this!"

# 80% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 80% complete

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    verify_card_number(translated_card_number)

main()
