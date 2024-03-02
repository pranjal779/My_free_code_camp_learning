def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')

def total_expenses(expenses):
    pass
    
# Step 15
# Next, you are going to implement the same logic to the total_expenses function.

# For now, delete both the test function and the print() call.

# deleted the lines

# "Way cool!"

# 34% complete
# Learn Lambda Functions by Building an Expense Tracker
# 34% complete

expenses = []
