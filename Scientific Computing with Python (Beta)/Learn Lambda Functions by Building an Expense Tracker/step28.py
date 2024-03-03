def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')
    
def total_expenses(expenses):
    return sum(map(lambda expense: expense['amount'], expenses))
    
def filter_expenses_by_category(expenses, category):
    return filter(lambda expense: expense['category'] == category, expenses)

# Step 28
# The input() function takes a user input and it returns the user input in the form of a string.

# Inside your while loop, call the input() function passing the string 'Enter your choice: ' as the argument, 
# and assign the result to a variable named choice.

def main():
    expenses = []
    while True:
        choice = input('Enter your choice: ')
        print('\nExpense Tracker')
        print('1. Add an expense')
        print('2. List all expenses')
        print('3. Show total expenses')
        print('4. Filter expenses by category')
        print('5. Exit')


# "To the nines!"

# 64% complete
# Learn Lambda Functions by Building an Expense Tracker
# 64% complete
