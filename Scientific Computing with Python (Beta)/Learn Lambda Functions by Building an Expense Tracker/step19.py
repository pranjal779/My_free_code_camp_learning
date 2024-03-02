def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')
    
def total_expenses(expenses):
    return sum(map(lambda expense: expense['amount'], expenses))

# Step 19
# Next, define a function named filter_expenses_by_category that takes two parameters: expenses and category. Use pass to fill the function body.
    
def filter_expenses_by_category(expenses, category):
    pass

# "You're crushing it!"

# 43% complete
# Learn Lambda Functions by Building an Expense Tracker
# 43% complete

expenses = []
