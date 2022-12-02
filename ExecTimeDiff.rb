def my_min(arr)
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

arr = [2, 3, 5, 4, -5, 10, 1, 90]
p my_min(arr)


def my_min2(arr)
    least = arr.first # 2
    arr.each { |ele|  least = ele if ele < least   }
    least
end

# arr = [2, 3, 5, 4, -5, 10, 1, 90]
# p my_min2(arr)