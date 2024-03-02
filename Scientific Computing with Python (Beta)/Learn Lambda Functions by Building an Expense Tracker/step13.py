def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')

def total_expenses(expenses):
    pass

# Step 13
# Lambda functions can be valuably combined with the map() function, 
# which executes a specified function for each element in a collection of objects, such as a list:

# map(lambda x: x * 2, [1, 2, 3])
# The result of the example above would be [2, 4, 6], where each item in the list passed to map() has been doubled by the action of the lambda function.

# Modify your print() call to print the result of calling map() with test as the first argument, and [2, 3, 5, 8] as the second argument.


test = lambda x: x * 2
print(map(test, [2, 3, 5, 8]))

# "Thundercats, Hooo!"

# 30% complete
# Learn Lambda Functions by Building an Expense Tracker
# 30% complete


expenses = []
