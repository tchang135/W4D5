def bad_two_sum?(arr, target) #O(n^2) time, O(1) space 
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            return true if arr[i] + arr[j] == target
        end
    end
    false
end

# arr = [1, 2, 3, 4, 5, 0]
# p bad_two_sum?(arr, 5)


def okay_two_sum?(arr, target)
    arr = arr.sort 
    i = 0 
    j = arr.length - 1 
    until i >= arr.length 
        while i < j 
            if arr[i] + arr[j] == target 
                return true 
            else  
                j -= 1 
            end
        end
        i += 1 
    end
    false 
end

# arr = [1, 2, 1, 1, 4]
# p okay_two_sum?(arr, 5)


def two_sum?(arr, target)
    hash = {}

    arr.each do |el|
        diff = target - el  
        return true if hash[diff] 
        hash[el] = 'hi'
    end
    false 
end

arr = [1, 2, 1, 1, 2]
p two_sum?(arr, 5)

