require "byebug"
# warmup
def range(first, last)
    return [first] if first + 1 == last
    [first] + range(first + 1, last)
end

def iterative_sum_of_array(array)
    sum = 0
    array.each { |element| sum += element }
    sum
end

def recursive_sum(array)
    return array.first if array.length == 1
    array.pop + recursive_sum(array)
end

# projects
def exp(base, exponent)
    return 1 if exponent.zero?
    base * exp(base, exponent - 1)
end

# REVIEW ---- understand
def exp_2(base, exponent)
    return 1 if exponent.zero?
    return base if exponent == 1
    if exponent.even?
        current_step = exp_2(base, exponent / 2)
        current_step * current_step
    else
        current_step = exp_2(base, (exponent - 1) / 2)
        base * current_step * current_step
    end
end

def deep_dup(item)
    return item unless item.is_a?(Array)
    return [] if item.length.zero?
    new_array = []
    item.each do |returned_item|
        new_array << deep_dup(returned_item)
    end
    new_array
end

def iterative_fib(n)
    return Array.new(n, 1) if n <= 2
    array = [1]
    (n-1).times do
        array << array.last(2).reduce(:+)
    end
    array
end

def fib(n)
    return [] if n == 0
    return [1] if n == 1
    step1 = fib(n-1)
    step1 << step1.last(2).reduce(:+) 
end


def bsearch2(array, element)
    return nil if array.empty?
    middle_index = array.length/2
    if array[middle_index] == element
        middle_index
    elsif array[middle_index] > element
        bsearch(array[0..middle_index-1], element)
    elsif array[middle_index] < element
        right_half_index = bsearch(array[middle_index..-1], element)
        right_half_index.nil? ? nil : middle_index + right_half_index
    end
end
    

def merge_sort(array)
    return array if array.length <= 1
    first_half = merge_sort(array[0...array.length/2])
    second_half = merge_sort(array[array.length/2..-1])
    # debugger 
    merge(first_half, second_half)
end


def merge(array1, array2)
    merged_array = []
    until array1.empty? || array2.empty?
        # debugger
        if array1.first > array2.first
            merged_array << array2.shift
        elsif array1.first <= array2.first
            merged_array << array1.shift
        end
    end
    merged_array + array1 + array2    
end




def subsets(array)
    return array if array.empty?
    subset_arr = []
    next_iteration = [array.pop]
    subsets(array).each do |el|
        subset_arr << el
        subset_arr << el + next_iteration
    end
    subset_arr << next_iteration
end

