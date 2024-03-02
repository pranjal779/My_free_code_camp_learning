def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')

# Step 17
# Now, call map() passing your lambda function as the first argument and the expenses list as the second argument.

def total_expenses(expenses):
    map(lambda expense: expense['amount'], expenses)

# "Target acquired."

# 39% complete
# Learn Lambda Functions by Building an Expense Tracker
# 39% complete


expenses = []
