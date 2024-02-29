# Step 10
# You have accessed elements (characters) of a string before, using the index operator []. You can also use the index operator to access a range of characters in a string with string[x:y:h]:

# my_string = 'camperbot'
# camper = my_string[0:6]
# cp = my_string[0:6:3]
# Where x is the starting index, y is the ending index, and h is the step (the amount of characters to skip over).

# Create a variable named card_number_reversed and assign it the value of the first 4 characters of card_number.

def verify_card_number(card_number):
    sum_of_odd_digits = 0
    card_number_reversed = card_number[0:4]

# "Code long and prosper."

# 29% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 29% complete

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    print(translated_card_number)

    verify_card_number(translated_card_number)

main()
