def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')

# Step 16
# Within your total_expenses function, replace pass with a lambda function. 
# Use expense as the parameter and return the value of the 'amount' key in the expense dictionary.

def total_expenses(expenses):
    lambda expense: expense['amount']

# "We knew you could do it!"

# 36% complete
# Learn Lambda Functions by Building an Expense Tracker
# 36% complete


expenses = []
