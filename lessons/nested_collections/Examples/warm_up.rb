animals = {"dogs" => 3, "cats" => 5, "iguanas" => 2}

p animals['dogs']

animals['parakeets'] = 3
p animals

animals['cats'] = 7
p animals


# 1. return the value of dogs
# 2. add 3 parakeets
# 3. increase the amount of cats by 2

pet_names = ["Fela", "Spot", "Patch", "Willy"]

pet_names.append('Claude')
p pet_names

p pet_names.first

p pet_names.last

pet_names.shift
p pet_names
# 1. add “Claude” to the end of the array
# 2. access the first name in the list
# 3. access the last name in the list
# 4. remove “Fela” from the list
