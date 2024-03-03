def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')
    
def total_expenses(expenses):
    return sum(map(lambda expense: expense['amount'], expenses))

# Step 21
# The filter() function allows you to select items from an iterable, such as a list, based on the output of a function:

# filter(my_function, my_list)
# filter() returns an iterator in which the elements of my_list are included, for which my_function returns True. 
# An iterator is a special object that enables you to iterate over the elements of a collection, like a list.

# Within the filter_expenses_by_category function, call filter() passing the lambda function you wrote in the previous step 
# as the first argument and the expenses list as the second argument.

def filter_expenses_by_category(expenses, category):
    filter(lambda expense: expense['category'] == category, expenses)

# "Down the rabbit hole we go!"

# 48% complete
# Learn Lambda Functions by Building an Expense Tracker
# 48% complete


expenses = []
