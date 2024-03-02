def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')

def total_expenses(expenses):
    pass

# Step 14
# The sum() function returns the sum of the items in the iterable which is passed as its argument. 
# You are going to use sum() together with map() and lambda functions to get the total amount of expenses.

# For now, make a little test and modify your current print() call by passing sum(map(test, [2, 3, 5, 8])) as the argument.


test = lambda x: x * 2
print(sum(map(test, [2, 3, 5, 8])))

# "Moon Prism Power!"

# 32% complete
# Learn Lambda Functions by Building an Expense Tracker
# 32% complete



expenses = []

# Output:
# >>> 36
