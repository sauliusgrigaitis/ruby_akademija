class Integer
  def fibonacci
    self < 2 ? self : (self - 2).fibonacci + (self - 1).fibonacci
  end
end
