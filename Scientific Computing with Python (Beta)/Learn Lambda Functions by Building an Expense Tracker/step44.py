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

        elif choice == '3':
            print('\nTotal Expenses: ', total_expenses(expenses))

        elif choice == '4':
            category = input('Enter category to filter: ')
            print(f'\nExpenses for {category}:')
            expenses_from_category = filter_expenses_by_category(expenses, category)
            print_expenses(expenses_from_category)

        elif choice == '5':
            print('Exiting the program.')
            break

# Step 44
# You can use the __name__ variable to determine if a Python script is being run as the main program 
# or if it is being imported as a module (code written in another Python file).

# If the value of __name__ is set to '__main__', it implies that the current script is the main program, and not a module.

# As a final step, create an if statement to check if __name__ == '__main__', and move the main() call inside this block.

# With that, the expense tracker project is complete!

if __name__=='__main__':
    main()

# "Bodacious!"

# 100% complete
# Learn Lambda Functions by Building an Expense Tracker
# 100% complete

# Output:
# >>> 
# Expense Tracker
# >>> 1. Add an expense
# >>> 2. List all expenses
# >>> 3. Show total expenses
# >>> 4. Filter expenses by category
# >>> 5. Exit
# >>> Enter your choice:
