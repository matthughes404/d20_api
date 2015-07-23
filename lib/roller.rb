class Roller
  def roll(num)
    1 + rand(num) if num.kind_of? Integer
  end
end
