#Ruby Arrays

letters = ["a", "b", "c"]

puts letters.length # begins at 0 index
puts letter[0]

myArray = ["Alex", true, 42] # can contain multiple values as usual

print myArray

names = ["Jeff", "Tommy", "Robbert"]
print names
# Manipulate array content
names << "Brian" # Shovel, adds to end of array. Much like JS arr.push()
names[1] = "Mike" # replaces content at index 1


# dynamic way to print out any array called
def printArr(arr)
    i = 0
    while i < arr.length
        puts arr[i]
        i += 1
    end
end

printArr(names)