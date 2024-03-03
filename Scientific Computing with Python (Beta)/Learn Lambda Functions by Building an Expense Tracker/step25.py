def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')
    
def total_expenses(expenses):
    return sum(map(lambda expense: expense['amount'], expenses))
    
def filter_expenses_by_category(expenses, category):
    return filter(lambda expense: expense['category'] == category, expenses)

def main():
    expenses = []

# Step 25
# The while loop you created in the previous step is an infinite loop that will allow the program to continuously present menu options 
# until the user decides to exit.

# After the print() call, add another one to print the string '1. Add an expense'.
  
    while True:
        print('\nExpense Tracker')
        print('1. Add an expense')

# "You're an all star!"

# 57% complete
# Learn Lambda Functions by Building an Expense Tracker
# 57% complete
