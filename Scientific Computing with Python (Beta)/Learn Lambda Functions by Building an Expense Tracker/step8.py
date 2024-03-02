def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})

# Step 8
# Next, you are going to display the details for each expense.

# Inside the for loop, replace pass with a print() call 
# and pass it the following f-string: f'Amount: {expense}, Category: {expense}'. Leave the placeholders empty for now.

def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense}, Category: {expense}')

# "You make this look easy!"

# 18% complete
# Learn Lambda Functions by Building an Expense Tracker
# 18% complete


expenses = []
