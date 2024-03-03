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

#   Step 26
# Next, add another print() call and pass the string '2. List all expenses'.
    while True:
        print('\nExpense Tracker')
        print('1. Add an expense')
        print('2. List all expenses')


# "They're in another castle."

# 59% complete
# Learn Lambda Functions by Building an Expense Tracker
# 59% complete
