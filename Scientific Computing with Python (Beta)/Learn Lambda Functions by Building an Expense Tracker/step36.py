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
            category = input('Enter category: ')
            add_expense(expenses, amount, category)
        elif choice == '2':
            print('\nAll Expenses:')
            print_expenses(expenses)

# Step 36
# To show the total expenses, create an elif statement that checks if choice == '3'.

# If it's true, it means the user wants to see the total expenses. So call print() 
# and pass the string '\nTotal Expenses: ' as the first argument and total_expenses(expenses) as the second argument.
      
        elif choice == '3':
            print('\nTotal Expenses: ', total_expenses(expenses))


# "You're on fire!"

# 82% complete
# Learn Lambda Functions by Building an Expense Tracker
# 82% complete
