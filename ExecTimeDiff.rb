def my_min(arr) #O(n^2)
    least = arr.first
    arr.each_with_index do |ele, idx|
        arr.each_with_index do |ele2, idx2|
            if idx2 > idx && ele < ele2
                least = ele if ele < least
            end
        end
    end
least
end

# arr = [2, 3, 5, 4, -5, 10, 1, 90]
# p my_min(arr)


def my_min2(arr) #O(n)
    least = arr.first # 2
    arr.each { |ele|  least = ele if ele < least   }
    least
end

# arr = [2, 3, 5, 4, -5, 10, 1, 90]
# p my_min2(arr)


def largest_sum(arr) #O(n^2)
    subs = [] 
    sums = [] 

    (0...arr.length).each do |i|
        (i...arr.length).each do |j|
            subs << arr[i..j]
        end
    end
    subs.each do |subarr|
        sums << subarr.sum 
    end
sums.max
end

# list = [2, 3, -6, 7, -6, 7]
# p largest_sum(list)


def largest_sum(arr)
    largest = 0 
    current = 0 
    
end