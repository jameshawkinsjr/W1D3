require 'byebug'

#Problem 1: 

def sum_recur(array)
    return 0 if array.empty?
    sum = 0
    sum += array.pop
    sum += sum_recur(array)
end

#Problem 2: 

def includes?(array, target)
    return true if array.last == target
    return false if array.empty?
    array.pop
    includes?(array, target)
end

# Problem 3: 

def num_occur(array, target)
    return 0 if array.empty?
    total = 0
    if array.last == target
        total += 1
        array.pop
        total += num_occur(array, target)
        total
    else
        array.pop
        total += num_occur(array, target)
        total
    end
    total
end

# Problem 4: 

def add_to_twelve?(array)
    return false if array.length <= 1
    if array[-1] + array[-2] == 12
        return true
    else
        array.pop
        add_to_twelve?(array)
    end
end

# Problem 5: 

def sorted?(array)
    return true if array.length <= 1
    if array[0] <= array[1]
        array.shift
        sorted?(array)
    else
        false
    end
end

# Problem 6: 

def reverse(string)
    return string if string.length == 1
    new_string = ""
    new_string += string[-1] + reverse(string[0...-1])
    new_string
end
