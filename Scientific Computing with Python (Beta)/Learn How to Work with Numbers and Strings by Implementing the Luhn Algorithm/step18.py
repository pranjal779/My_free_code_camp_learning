# Step 18
# Print the value of the odd_digits variable to the console.

def verify_card_number(card_number):
    sum_of_odd_digits = 0
    card_number_reversed = card_number[::-1]
    odd_digits = card_number_reversed[::2]
    print(odd_digits)


# "Thunder Breathing First Form!"

# 51% complete
# Learn How to Work with Numbers and Strings by Implementing the Luhn Algorithm
# 51% complete

def main():
    card_number = '4111-1111-4555-1142'
    card_translation = str.maketrans({'-': '', ' ': ''})
    translated_card_number = card_number.translate(card_translation)

    verify_card_number(translated_card_number)

main()

# Output:
# >>> 21551111
