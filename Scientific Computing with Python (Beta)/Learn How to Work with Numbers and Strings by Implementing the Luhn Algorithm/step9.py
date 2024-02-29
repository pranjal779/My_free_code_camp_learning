'''
Step 9
The Luhn algorithm is as follows:

1) From the right to left, double the value of every second digit; if the product is greater than 9, sum the digits of the products.
2) Take the sum of all the digits.
3) If the sum of all the digits is a multiple of 10, then the number is valid; else it is not valid.
Assume an example of an account number "7992739871" that will have a check digit added, making it of the form 7992739871x:

Account number      7   9  9  2  7  3  9   8  7  1  x
Double every other  7  18  9  4  7  6  9  16  7  2  x
Sum 2-char digits   7   9  9  4  7  6  9   7  7  2  x
Replace the pass statement with a variable sum_of_odd_digits and a value of 0.
'''

def verify_card_number(card_number):
    sum_of_odd_digits = 0

# "Terminated."

# 26% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 26% complete

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    print(translated_card_number)

    verify_card_number(translated_card_number)

main()

# Output:
# >>> 4111111145551142
