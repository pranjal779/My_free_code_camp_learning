def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')

# Step 10
# You will need a function to calculate the total amount of expenses. 
# Define a function named total_expenses that takes one parameter expenses. Fill the function body with a pass statement for now.

def total_expenses(expenses):
    pass

# "Tomorrow, the world!"

# 23% complete
# Learn Lambda Functions by Building an Expense Tracker
# 23% complete


expenses = []
