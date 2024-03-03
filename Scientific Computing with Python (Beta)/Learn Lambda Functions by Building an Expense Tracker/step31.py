def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')
    
def total_expenses(expenses):
    return sum(map(lambda expense: expense['amount'], expenses))
    
def filter_expenses_by_category(expenses, category):
    return filter(lambda expense: expense['category'] == category, expenses)

# Step 31
# The amount of the expense needs to be converted before performing any calculation. 
# The float() function takes a string or an integer number as argument and returns a floating point number.

# Pass input('Enter amount: ') to the float() function.


def main():
    expenses = []
    while True:
        print('\nExpense Tracker')
        print('1. Add an expense')
        print('2. List all expenses')
        print('3. Show total expenses')
        print('4. Filter expenses by category')
        print('5. Exit')
        
        choice = input('Enter your choice: ')
        
        if choice == '1':
            amount = float(input('Enter amount: '))



# "Woo-hoo!"

# 70% complete
# Learn Lambda Functions by Building an Expense Tracker
# 70% complete
