def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')
    
def total_expenses(expenses):
    return sum(map(lambda expense: expense['amount'], expenses))
    
def filter_expenses_by_category(expenses, category):
    return filter(lambda expense: expense['category'] == category, expenses)

# Step 24
# A while loop is another kind of loop that runs a portion of code until a specified condition is True:

# while condition:
#     <code>
# Below the expenses list, create a while loop. Use True for the condition, 
# and print the string '\nExpense Tracker' inside the loop body to show the title of the program.


def main():
    expenses = []
    while True:
        print('\nExpense Tracker')


# "Even Honey Badger cares!"

# 55% complete
# Learn Lambda Functions by Building an Expense Tracker
# 55% complete
