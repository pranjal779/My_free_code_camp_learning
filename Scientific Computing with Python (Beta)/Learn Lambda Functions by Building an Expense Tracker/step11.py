def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')

def total_expenses(expenses):
    pass

# Step 11
# Lambda functions are brief, anonymous functions in Python, ideal for simple, one-time tasks. 
# They are defined by the lambda keyword, and they use the following syntax:

# lambda x: expr
# In the example above, x is a parameter to be used in the expression expr. 
# Create a test variable and assign it a lambda function that takes an x parameter and returns x * 2.


test = lambda x: x * 2

# "You're unstoppable!"

# 25% complete
# Learn Lambda Functions by Building an Expense Tracker
# 25% complete

expenses = []
