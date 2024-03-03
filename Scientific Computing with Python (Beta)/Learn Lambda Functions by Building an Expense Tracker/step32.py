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
      
# Step 32
# Inside your if statement, create a variable category to store the expense category. Assign it input('Enter category: ').
      
        if choice == '1':
            amount = float(input('Enter amount: '))
            category = input('Enter category: ')


# "Your powers combined!"

# 73% complete
# Learn Lambda Functions by Building an Expense Tracker
# 73% complete
