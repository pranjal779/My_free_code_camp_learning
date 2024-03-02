def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')
    
def total_expenses(expenses):
    return sum(map(lambda expense: expense['amount'], expenses))

# Step 20
# Within the filter_expenses_by_category function, replace pass with a lambda function. 
# Use expense as the parameter and return the comparison between the value of the 'category' key of the expense dictionary and category.

def filter_expenses_by_category(expenses, category):
    lambda expense: expense['category'] == category

# "Checkmate!"

# 45% complete
# Learn Lambda Functions by Building an Expense Tracker
# 45% complete


expenses = []
