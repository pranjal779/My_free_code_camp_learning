def truncate(n):
  multiplier = 10
  return int(n * multiplier) / multiplier

def getTotals(categories):
  total = 0
  breakdown = []
  for category in categories:
    total += category.get_withdrawls()
    breakdown.append(category.get_withdrawls())
  rounded = list(map(lambda x: truncate(x/total), breakdown))
  return rounded

def create_spend_chart(categories):
  """
  create_spend_chart that takes a list of categories as an argument. 
  It should return a string that is a bar chart.
  """
  res = "Percentage spent by category\n"
  i = 100
  totals = getTotals(categories)
  while i >= 0:
    chart_spaces = " "
    for total in totals:
      if total * 100 >= i:
        chart_spaces += "o "
      else:
        chart_spaces += "  "
    res += str(i).rjust(3) + "|" + chart_spaces + ("\n")
    i-=10

  dashes = "-" + "---"*len(categories)
  names = []
  x_axis = ""
  for category in categories:
    names.append(category.name)

  maxi = max(names, key=len)

  for x in range(len(maxi)):
    nameStr = '     '
    for name in names:
      if x >= len(name):
        nameStr += "  "
      else:
        nameStr += name[x] + " "

    if(x != len(maxi) -1 ):
      nameStr += '\n'

    x_axis += nameStr

  res += dashes.rjust(len(dashes)+4) + "\n" + x_axis
  return res


class Category:

  def __init__(self, name):
    self.name = name
    self.ledger = list()

  def __str__(self):
    title = f"{self.name:*^30}\n"
    items = ""
    total = 0
    for item in self.ledger:
      items += f"{item['description'][0:23]:23}" + f"{item['amount']:>7.2f}" + '\n'

      total += item['amount']

    output = title + items + "Total: " + str(total)
    return output

  def deposit(self, amount, description=""):
    """
    A deposit method that accepts an amount and description. If no description is given,      
    it should default to an empty string. The method should append an object to the           
    ledger list in the form of {"amount": amount, "description": description}
    """
    self.ledger.append({"amount": amount, "description": description})

  def withdraw(self, amount, description=""):
    """
    A withdraw method that is similar to the deposit method, but the amount passed in         
    should be stored in the ledger as a negative number. If there are not enough funds,       
    nothing should be added to the ledger. This method should return True if the         
    withdrawal took place, and False otherwise.
    """
    if (self.check_funds(amount)):
      self.ledger.append({"amount": -amount, "description": description})
      return True
    return False

  def get_balance(self):
    """
    A get_balance method that returns the current balance of the budget category 
    based on the deposits and withdrawals that have occurred.
    """
    total_cash = 0
    for item in self.ledger:
      total_cash += item["amount"]

    return total_cash

  def transfer(self, amount, catergory):
    """
    A transfer method that accepts an amount and another budget category as arguments. 
    The method should add a withdrawal with the amount and 
    the description "Transfer to [Destination Budget Category]".
    The method should then add a deposit to the other budget category with the amount and 
    the description "Transfer from [Source Budget Category]". 
    If there are not enough funds, nothing should be added to either ledgers. 
    This method should return True if the transfer took place, and False otherwise.
    """
    if (self.check_funds(amount)):
      self.withdraw(amount, "Transfer to " + catergory.name)
      catergory.deposit(amount, "transfer from " + self.name)
      return True
    return False

  def check_funds(self, amount):
    """
    A check_funds method that accepts an amount as an argument.
    It returns False if the amount is greater than the balance of the budget category 
    and returns True otherwise.
    This method should be used by both the withdraw method and transfer method.
    """
    if(self.get_balance() >= amount):
      return True
    return False


  # Percentage spent by category
  def get_withdrawls(self):
    total = 0
    for item in self.ledger:
      if item["amount"] < 0:
        total += item["amount"]
    return total