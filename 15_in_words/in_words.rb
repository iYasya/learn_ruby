class Fixnum
  def in_words
    case self
      when 0 then 'zero'
      when 1 then 'one'
      when 2 then 'two'
      when 3 then 'three'
      when 4 then 'four'
      when 5 then 'five'
      when 6 then 'six'
      when 7 then 'seven'
      when 8 then 'eight'
      when 9 then 'nine'
      when 10 then 'ten'
      when 11 then 'eleven'
      when 12 then 'twelve'
      when 13 then 'thirteen'
      when 14..19 then
        case (self%10)
          when 3 then 'thirteen'
          when 5 then 'fifteen'
          when 8 then 'eighteen'
          else (self%10).in_words + 'teen'
        end
      when 20..99 then
        (case (self/10)
           when 2 then 'twenty'
           when 3 then 'thirty'
           when 4 then 'forty'
           when 5 then 'fifty'
           when 8 then 'eighty'
           else (self/10).in_words + 'ty'
         end) + ((self%10)>0 ? (' ' + (self%10).in_words) : '')
      when 100..999 then
        "#{(self/100).in_words} hundred" +
            ((self%100)>0 ? (' ' + (self%100).in_words) : '')
      when 1_000..999_999 then
        "#{(self/1_000).in_words} thousand" +
            ((self%1_000)>0 ? (' ' + (self%1_000).in_words) : '')
      when 1_000_000..999_999_999 then
        "#{(self/1_000_000).in_words} million" +
            ((self%1_000_000)>0 ? (' ' + (self%1_000_000).in_words) : '')
      when 1_000_000_000...999_999_999_999 then
        "#{(self/1_000_000_000).in_words} billion" +
            ((self%1_000_000_000)>0 ? (' ' + (self%1_000_000_000).in_words) : '')
    end
  end
end

class Bignum
  def in_words
    case self
      when 1_000_000_000...999_999_999_999 then
        "#{(self/1_000_000_000).in_words} billion" +
            ((self%1_000_000_000)>0 ? (' ' + (self%1_000_000_000).in_words) : '')
      when 1_000_000_000_000..999_999_999_999_999 then
        "#{(self/1_000_000_000_000).in_words} trillion" +
            ((self%1_000_000_000_000)>0 ? (' ' + (self%1_000_000_000_000).in_words) : '')
    end
  end
end