def sub_string(txt, dic)
#Need to split up whatever text is passed through into a separate array. 
#compare each element to see if it is in our dictionary anywhere. 
#if so then loop through that new array at that point, add up the number of times the word appears.
#finally add that word with the number of times it occurs to the hash.
#repeat each step until you reach the end of the new array. return the new complete hash.
    word = {}
    txt_array = txt.downcase.split
    txt_array_size = txt_array.size

    dic.size.times do |num|
        word_size = dic[num].length
        count = 0

        txt_array_size.times do |x|
            txt_size = txt_array[x].length
            i = 0
            while i < txt_size do

                if ((word_size + i) > txt_size)
                    break
                end
                if dic[num].downcase == txt_array[x][i,word_size]
                    count+=1
                end
                i+=1
            end
        end
        if count > 0
            word[dic[num]] = count
        end

    end
    p word
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p "Please enter a sentence."
sub_string(gets.chomp, dictionary)