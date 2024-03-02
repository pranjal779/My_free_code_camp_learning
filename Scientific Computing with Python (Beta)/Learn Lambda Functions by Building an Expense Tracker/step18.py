def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')

# Step 18
# Finally, pass your map() call to the sum() function to obtain the total expenses and return the result.

def total_expenses(expenses):
    return sum(map(lambda expense: expense['amount'], expenses))

# "Cool beans!"

# 41% complete
# Learn Lambda Functions by Building an Expense Tracker
# 41% complete

expenses = []
