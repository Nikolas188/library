class library
  def add(object)
    case object
    when Author
      @authors << object
    when Book
      books << object
    when Reader
      @readers << object
    when Order
      @orders << object
    end
  end

  def save
    save_to_yaml(@autors)
    save_to_yaml(@books)
    save_toy_aml(@readers)
    save_to_yaml(@orders)
  end
end