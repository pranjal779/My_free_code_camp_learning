def add_expense(expenses, amount, category):
    expenses.append({'amount': amount, 'category': category})
    
def print_expenses(expenses):
    for expense in expenses:
        print(f'Amount: {expense["amount"]}, Category: {expense["category"]}')
    
def total_expenses(expenses):
    return sum(map(lambda expense: expense['amount'], expenses))
    
def filter_expenses_by_category(expenses, category):
    return filter(lambda expense: expense['category'] == category, expenses)

# Step 29
# You are going to use conditional statements to check the user's choice. If the choice is '1', it means the user wants to add an expense.

# Still in the while loop, under the choice variable, write an if statement to check if choice equals the string '1'. If it's true, it will be the starting point for adding a new expense.

# Inside the if statement body, declare a variable amount and assign it an empty input() call.


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
            amount = input()


# "Raise the roof!"

# 66% complete
# Learn Lambda Functions by Building an Expense Tracker
# 66% complete
