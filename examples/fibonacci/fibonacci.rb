class Integer
  def fibonacci
    if self == 1
      0
    elsif self == 2 or self == 3
      1
    else
      (self - 2).fibonacci + (self - 1).fibonacci
    end
  end
end
