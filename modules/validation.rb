module Validation
  def validate_string(value, name)
    validate_class(value, String, name)
  end

  def validate_number(value, name)
    validate_class(value, Integer, name)
  end

  def validate_class(object, class_name, argument_name)
    if !object.is_a?(class_name)
      raise ArgumentError.new("#{argument_name} is not an object of class #{class_name}")
    end
  end

  def validate_positive(value, name)
    raise ArgumentError.new("#{name} must be positive") if value <= 0
  end
end
