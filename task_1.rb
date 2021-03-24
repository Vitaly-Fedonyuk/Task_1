class String
  # @return [TrueClass, FalseClass]
  def valid?
    string = self
    a = string.chars
    while a.length.positive?
      if a.shift == '{' && a.pop == '}'
        return  true
      elsif a.shift == '[' && a.pop == ']'
        return  true
      elsif a.shift == '(' && a.pop == ')'
        return true
      else
         false
      end
    end

  end
end

