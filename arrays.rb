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

# doubles the numbers in an array
def doubler(numbers)
    i = 0
      while i < numbers.length
        numbers[i] = numbers[i] * 2
        i += 1
      end
    return numbers
end

# add an exclamation point to the end of every array
def yell(words)
    i = 0
      while i < words.length
        words[i] = words[i] + "!"
        i+= 1
      end
    return words
end

# multiply array index by index number
def element_times_index(numbers)
    i = 0
    count = 0
      while i < numbers.length
        numbers[i] = numbers[i] * count
        count += 1
        i += 1
      end
    return numbers
end

# returns even array from any given number
def even_nums(max)
    newArr = []
    i = 0
      while i <= max
          if i % 2 == 0
            newArr << i
          end
                i+=1
        end
       return newArr
      end

# find the range between two numbers
def range(min, max)
    newArr = []
    i = min
    while i <= max
        newArr << i
        i +=1
    end
    return newArr
    end

# find the odd number in an array
def odd_range(min, max)
    newArr = []
    i = min
      while i <= max
       if i % 2 != 0
         newArr << i
       end
       i += 1
      end
      return newArr
    end

# reverse range excluding min and max
def reverse_range(min, max)
    newArr = []
    i = max - 1
    while i >= min +1
      newArr << i
      i -= 1
    end
    return newArr
  end

# return first half of array, round up if odd
def first_half(array)
    i = 0
    newArr = []
    while i < array.length / 2.0
      newArr << array[i]
      i += 1
    end
    return newArr
  end

# return the factors of the number entered
def factors_of(num)
    i = 1
    newArr = []
    while i <= num
      if num % i == 0
          newArr << i
      end
      i += 1
    end
    return newArr
  end