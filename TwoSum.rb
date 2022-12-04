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