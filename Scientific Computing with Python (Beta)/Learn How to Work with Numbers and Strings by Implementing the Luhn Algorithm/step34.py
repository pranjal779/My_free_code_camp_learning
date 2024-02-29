def verify_card_number(card_number):
    sum_of_odd_digits = 0
    card_number_reversed = card_number[::-1]
    odd_digits = card_number_reversed[::2]

    for digit in odd_digits:
        sum_of_odd_digits += int(digit)

    sum_of_even_digits = 0
    even_digits = card_number_reversed[1::2]
    for digit in even_digits:
        number = int(digit) * 2
        if number >= 10:
            number = (number // 10) + (number % 10)
        sum_of_even_digits += number
    total = sum_of_odd_digits + sum_of_even_digits
    print(total)
    return total % 10 == 0

# Step 34
# Change the value of card_number such that 'INVALID!' is printed to the console.

def main():
    card_number = '4111-1011-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

# "Checkmate!"

# 97% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 97% complete



    if verify_card_number(translated_card_number):
        print('VALID!')
    else:
        print('INVALID!')

main()

# Output:
# >>> 49
# >>> INVALID!
