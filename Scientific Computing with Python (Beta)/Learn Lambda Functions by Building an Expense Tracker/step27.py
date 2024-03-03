def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')
    
def total_expenses(expenses):
    return sum(map(lambda expense: expense['amount'], expenses))
    
def filter_expenses_by_category(expenses, category):
    return filter(lambda expense: expense['category'] == category, expenses)

def main():
    expenses = []

#   Step 27
# Provide the other menu options by printing the following three strings in your while loop: 
# '3. Show total expenses', 
# '4. Filter expenses by category', 
# and '5. Exit'.
    while True:
        print('\nExpense Tracker')
        print('1. Add an expense')
        print('2. List all expenses')
        print('3. Show total expenses')
        print('4. Filter expenses by category')
        print('5. Exit')


# "It's alive. It's alive!"

# 61% complete
# Learn Lambda Functions by Building an Expense Tracker
# 61% complete
