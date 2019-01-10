def factorial(n)
    return 1 if n == 1
    n * factorial(n-1)
end

def upcase(string)
    return string.upcase if string.length <= 1
    string[0].upcase + upcase(string[1..-1])
end

def reverse(string)
    return string if string.length <= 1
    string[-1] + reverse(string[0..-2])
end

def quick_sort(arr)
    return arr if arr.length <= 1
    pivot_array = [arr.first]
    left_side = arr[1..-1].select { |el| el < arr.first}
    right_side = arr[1..-1].select { |el| el >= arr.first}
    quick_sort(left_side) + pivot_array + quick_sort(right_side)
end

def addition(n)
    return 1 if n == 1
    n + addition(n-1)
end

def fibonacci(n)
    return n if (0..1).include? n
    ( fibonacci(n-1) + (fibonacci(n -2)))
end
