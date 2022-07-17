module Validation

  def validate_string(value, name)
    if !value.is_a?(String)
      raise ArgumentError.new("#{name} should be a string")
    end
  end

  def validate_class_author(object_author)
    if !object_author.is_a?(Author)
      raise ArgumentError.new('author it is not a class object Author')
    end
  end

  def validate_string(value, book)
    if !value.is_a?(String)
      raise ArgumentError.new("#{book} should be a string")
    end
  end

  def validate_class_book(object_book)
    if !object_book.is_a?(Book)
      raise ArgumentError.new("#{book} it is not a class object Book")
    end
  end

  def validate_class_reader(object_reader)
    if !object_reader.is_a?(Reader)
      raise ArgumentError.new(' reader it is not a class object Reader')
    end
  end
end
