def first_anagram?(str, str2)
    anagrams = [] 


end


def second_anagram?(str, str2) #O(n^2) time, O(n) linear
    check = str.split("")
    str.each_char do |el|
        if check.include?(el) 
            idx = check.find_index(el)
            check.delete_at(idx)
        end
    end
    check.empty?
end


def third_anagram?(str, str2) #O(log(n)) time, O(n)
    arr1 = str.split('').sort.join 
    arr2 = str2.split('').sort.join 
    arr1 == arr 2
end


def fourth_anagram?(str, str2) #o(n) time, o(1) space 
    counter1 = Hash.new(0)
    counter2 = Hash.new(0)

    str.each_char { |el1| counter1[el1] += 1 }
    str2.each_char { |el2| counter2[el2] += 1}

    counter1 == counter2
end