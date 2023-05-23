numbers = [[1, 2, 3], [4, 5, 6]]

# 1. what is numbers.count
# how many elements in the array
# in this case 2 arrays in an array
p numbers.count
# 2. what is numbers.first.count
# the amount of elements in the first array
p numbers.first.count
# 3. how can I access the element 5
p numbers[1][1]
# 4. how can I add [7,8,9] to the numbers array
numbers << [7, 8, 9]
p numbers
# 5. What element does numbers[0] return?
# the first array in the arrays
p numbers[0]
