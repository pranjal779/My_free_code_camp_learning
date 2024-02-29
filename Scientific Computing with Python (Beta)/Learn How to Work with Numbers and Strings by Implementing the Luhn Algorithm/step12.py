# Step 12
# Change card_number_reversed to be every second digit of the first four digits of card_number.

def verify_card_number(card_number):
    sum_of_odd_digits = 0
    card_number_reversed = card_number[0:4:2]
    print(card_number_reversed)
    

# "You did it!"

# 34% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 34% complete

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    print(translated_card_number)

    verify_card_number(translated_card_number)

main()
