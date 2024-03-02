def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})

# Step 9
# You can access values in a dictionary through its keys. You need to use the bracket notation and include the key between the square brackets:

# my_dict = {'amount': 50.0, 'category': 'Food'}
# my_dict['amount'] # 50.0
# You are currently interpolating the expense dictionary in your f-string. 
# Modify the f-string expression to access the value of the 'amount' key and the 'category' key in the expense dictionary.

def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')

# "You're on fire!"

# 20% complete
# Learn Lambda Functions by Building an Expense Tracker
# 20% complete


expenses = []
