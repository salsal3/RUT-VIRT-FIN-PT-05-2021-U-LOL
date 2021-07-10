# Variables
'''
bid = 1.42
ask = 1.85
qty = 10000
minBid = 0
maxAsk = 0
prices = []
prices = [1.42, 1.32, 1.45, 1.20, 1.34, 1.74, 1.10, 1.89, 1.42, 1.90, 1.80, 1.85]
profit = (ask * qty) - (bid * qty)

print(f'${profit:,.2f}')

minBid = min(prices)
print(f'The lowest price to buy is ${minBid:.2f}.')
maxAsk = max(prices)
print(f'The highest price to sell is ${maxAsk:.2f}.')
optimal = (maxAsk - minBid) * qty
diff = optimal - profit

# LOOP FUNCTION #

print(f'Xena\'s trade made a profit of ${profit:,.2f}')
print(f'This trade would result in profits of ${optimal:,.2f}, a difference of ${diff:,.2f}')
'''

x = 0
y = 0
high = 0
low = 0

for i in prices:
    if low == 0:
        low

min_value = 0
max_value = 0
profit = 0

for price in range(len(prices)):
    if price == 0:
        min_value = prices[0]
        max_value = prices[0]
    elif profit > max_value:
        max_value = profit