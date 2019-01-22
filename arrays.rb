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

# returns array with only odd numbers from original
def select_odds(numbers)
    i = 0
    newArr = []
    while i < numbers.length
      if numbers[i] % 2 != 0
        newArr << numbers[i]
      end
      i += 1
    end
    return newArr
  end

# select words from an array that are longer than 4 letters
def select_long_words(words)
    i = 0
    newArr = []
    while i < words.length
      if words[i].length > 4
        newArr << words[i]
      end
      i += 1
    end
    return newArr
  end

# summing two arrays together
def sum_elements(arr1, arr2)
    i = 0
    newArr = []
    while i < arr1.length
      newArr << arr1[i] + arr2[i]
      i += 1
    end
    return newArr
  end

# fizz buzz; method returns array from argument thet contains all numbers
# divisible by 4 or 6 but not both
def fizz_buzz(max)
	i = 0
	newArr = []
  	while i < max
      if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
        newArr << i
      end
      i += 1
    end
  return newArr
end

# .push, .pop, .unshift, .shift

games = ["ARMA", "Mad Max", "Fallout"]
games.push("Half Life") # pushes to end of array, can push multiple values
#unlike shovel <<
games.push("Crysis", "Left 4 Dead", "Deus Ex")
games.pop() # or games.pop removes the last index of the array
games.unshift("Deus Ex") # adds index to the front of the array
games.shift() # removes the first index of the array

# index, include

someArr = ["SF", "LA", "NY"]
someArr.index("LA") # return the index position of the argument
someArr.index("NJ") # returns nothing since info is not in the array
someArr.include?("OK") # returns boolean value //false
someArr.include?("S") # returns true because it is in a string

# reverse
puts someArr.reverse # reverses the array on display
arr.reverse! # saves the array as reversed
def palindrome(word)
	return word == word.reverse #true
end

# slicing

new_array = ["a", "b", "c", "d", "e"]
new_array[1..3] #returns the start and end indeces
new_array[1...3] #returns everythign except the last index selected

some_str = "bootcamp"
print some_str[1..-1] # works on strings as well, -1 ends at last char

# split, join
another_str = "follow the yellow brick road"
print #array
another_str.split("the") #splits at word "the" and makes array out of
#things to the left and the right of it
another_str.split("") # splits every character into an array

some_other_array = ["hello", "how", "are", "you"]
some_other_array.join(" ") # jins the array by putting a space between
some_other_array.join("_") # underscores between each word

# ENUMERABLES

# each to iterate
months = ["Jan", "Feb", "Mar", "Apr"]
months.each { |month| puts month } # automatically iterates through
#each array index
months.each do |month| # another way to iterate, can run multiple outputs
  puts months
end #requires end to stop
months.each_with_index do |month, index| # returns index content and place
  puts month #iterates through index
  puts index #displays index number
end

sentence = "hello world"
sentence.each_char do |char| # can iterate through character in strings too
  puts char
end
sentence.each_char.withindex do |char, index| #slightly different syntax from arrays
puts char
puts index
end

# range enumerable

chomp = [1,2,3,4,5,6]
chomp.each {|num| puts num} #iterates but doesnt provide range
(1..10).each {|num| puts num} #() represent range, cleaner code
# can use ... in range as well

#fizz buzz recreation from above
def fizzBuzz(max)
  arr = []
  (1...max).each do |num|
    if num % 3 == 0 && num % 5 !==0
      arr << num
    end
    if num % 3 !== 0 && num % 5 ==0
      arr << num
    end
    puts num
  end
  return arr
end

puts fizzBuzz(20)

# times enumerable
(0..3).each {puts "hello"} #loops and prints "hello" as many times as range
#easier method
4.times {puts "hi"} #does same thing as above code

# NESTED loops
#a loop in a loop

(1..3).each do |num1|
  puts num1
  (1..4) each do |num2|
    puts "  " + num2.to_s
  end
end

alpha = ["a", "b", "c", "d", "e"]

# iterate all possible pairs with duplicates
alpha.each do |ele1|
  alpha.each do |ele2|
    puts ele1 + ele2
  end
end

# iterate through with unique pairs
alpha.each_with_index do |ele1, idx1|
  alpha.each_with_index do |ele2, idx2|
    if idx2 > idx1 #
      puts ele1 + ele2
    end
  end
end

# 2D arrays

pop_arr = [
  ["a", "b", "c"],
  ["d", "e"],
  ["f", "g", "h"]
]

print pop_arr[0] #prints first index of array, which is a sub-array
subArr = pop_arr[1] # or
pop_arr[1][1] # second sub-array,second index in array //"e"

arr.each do |subArray|
  print subArray # prints the whole arrays
  puts
  subArray.each do |element|
    puts element #prints elements in the array
  end
end

# convert name to initials
def to_initials(name)
  newName = name.split(" ")
  initials = ""
  newName.each { |part| ititials += part[0]}
  return initials

  # first to appear in array
  def first_in_array(arr, el1, el2)
 if arr.index(el1) < arr.index(el2)
    return el1
  else
    return el2
  end
end
