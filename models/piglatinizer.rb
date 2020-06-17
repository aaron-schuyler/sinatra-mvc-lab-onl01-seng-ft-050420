class PigLatinizer
  def piglatinize(phrase)
    arr = phrase.split(" ")
    i = 0
    while i < arr.count
      word = arr[i]
      suffix = ""
      prefix = ""
      arr2 = word.split('')
      t = true
      arr2.each do |letter|
        if t == true
          if letter.match?(/[AEIOUaeiou]/)
            suffix << letter
            t = false
          else
            prefix << letter
          end
        else
          suffix << letter
        end
      end
      if prefix == ""
        prefix = "w"
      end
      arr[i] = suffix + prefix + "ay"
      i+=1
    end
    arr.join(" ")
  end
end
