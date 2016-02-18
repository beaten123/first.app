module FunWithStrings
  def palindrome?
    # your code here string.downcase!
    string = self
    string.downcase!
    string.gsub!(/\W+/, '')
    string == string.reverse
  end
  
  def count_words
    # your code here
    string = self
    count = Hash.new{ |h, k| h[k] = 0 }
    string.split(/\b/).select{|w| w =~ /\w+/ }.map(&:downcase).each do |word|
      count[word] += 1
    end
    count
  end
  
  def anagram_groups
    # your code here
    string = self
    arr = string.split
    group = Array.new()
    anagrams = arr.group_by{|x| x.downcase.chars.sort}
    anagrams.each{|x,y| group.push(y)}
    return group
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
