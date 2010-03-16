class Integer
  def fibonacci
    if self == 0 or self == 1
      self 
    else
      (self - 2).fibonacci + (self - 1).fibonacci
    end
  end
end
