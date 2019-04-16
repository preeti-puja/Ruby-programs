=begin
1. iterate over a hash and print the value and key
2. iterate over keys of a hash and print
3. iterate over values of a hash and print
4. extract the value for a key from a hash
5. update the value for a key of a hash
6. merge a new key value to a hash
7. delete a key value from a hash
8. difference between merge and merge!
9. create a empty hash, traverse an array of number, check the number is odd or even and then push the number to hash as key and even/odd as value of that key.

  example: [1,2,3] = > {1 => 'odd', 2 => 'even', 3 => 'odd' }
10. In a hash there will be two key, one is odd and another is even, now traverse an array of number, check the number is odd or even and then increment the count of respective key.

  example: [1,2,3] => { odd: 2, even: 1}

11. calculate the frequecy of charecter and show it using a hash
  
  example: "aaabbc" = > {a: 3, b: 2, c: 1}     
=end
class Hash
    def iterate(h)
        h.each {|key, value| puts key, value}
    end

    def iterate_key(h)
        h.keys.each {|key| puts key}
    end

    def iterate_value(h)
        h.values.each {|value| puts value}
    end

    def extract_value(h, key)
       puts h[key] 
    end

    def update_value(h, key, new_value)
        puts h[key] = new_value
    end

    def merge_new_key_value(h, key, value)
        h.merge!({"#{key}".to_sym => value})
        puts h
    end

    def delete_hash(h, key)
        h.delete(key)
        puts h
    end

    def traverse_array(arr)
        h = {}
        arr.each do |a|
            if (a%2 == 0)
                h[a] = "even"
            else
                h[a] = "odd"
            end
        end
        puts h
    end

    def increament_value(arr)
        hash = {}

        arr.each do |a|
            if a%2 == 0
                hash["even"] = hash["even"].to_i + 1
            else
                hash["odd"] = hash["odd"].to_i + 1
            end
        end
        puts hash
    end

    def frequency(str)
        h = {}
        str.split('').each do |s|
            h[s] = h[s].to_i + 1
        end
        puts h
    end
end

obj = Hash.new
obj.iterate({:a => 1, :b => 2, :c => 3})
obj.iterate_key({:a => 1, :b => 2, :c => 3})
obj.iterate_value({:a => 1, :b => 2, :c => 3})
obj.extract_value({:a => 1, :b => 2, :c => 3}, :a)
obj.update_value({:a => 1, :b => 2, :c => 3}, :a, 44)
obj.merge_new_key_value({:a => 1, :b => 2, :c => 3}, :d, 44)
obj.delete_hash({:a => 1, :b => 2, :c => 3}, :a)
obj.traverse_array([1,2,3,4,5])
obj.increament_value([1,2,3,4,5])
obj.frequency("asassdd")