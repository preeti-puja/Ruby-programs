=begin
1. write a program which will take a string as argument and return the number of vowels in that string
Example: INPUT      OUTPUT
              Program           2
             Argument         3

2. write a program which will do the followings:
  a. [1, 2, 3, 4, 5] => [2,4,6,8,10] 
  b. [1,2,3,4,5,6] => [2,4,6]
  c. ['rock', 'paper', 'scissors', 'lizard', 'spock'] => will return an array of elements having length more than 5
  d. Compute the sum of cubes for a given range
  e. Given an array, return true if all the elements are Fixnums.
  f. Given a sentence, return true if the sentence is a palindrome.
3. Create a class Calculator, which performs addition and subtraction of two numbers at a time.
4. Given a sentence containing multiple words, find the frequency of a given word in that sentence
5. Create a method named 'sort_string' which accepts a String and rearranges all the words in ascending order, by length  
=end

class Array_program

    def vowels(string)
        vowel = ['a', 'e' ,'i', 'o', 'u']
        count = 0
        string.downcase.split('').each do |s|
            if vowel.include? s
                count += 1
            end
        end
        puts count
    end

    def multiply(array)
        array.map {|x| x*2}        
    end

    def even(array)
        array.select{|x| x if x%2 == 0}   
    end

    def length_array(array)
        array.select{|x| x if x.length > 5}
    end

    def sum_of_cubes(start, finish)
        sum = 0
        (start..finish).to_a.each do |x|
            sum +=  (x*x*x)
        end
        puts sum
    end

    def fixnums_array(array)
        array.each{|x| true if x.is_a?(Fixnum)}
    end

    def palindrome(sentence)
        sen =  sentence.downcase.reverse
        if sen == sentence
            puts sentence
        end
    end
end

obj = Array_program.new
obj.vowels("program")
puts obj.multiply([1, 2, 3, 4, 5])
puts obj.even([1, 2, 3, 4, 5])
puts obj.length_array(['rock', 'paper', 'scissors', 'lizard', 'spock'])
obj.sum_of_cubes(1, 3)
#obj.fixnums_array([1,2,3,4])
obj.palindrome("i lol i")
