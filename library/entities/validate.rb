module Validation
  def validate_string(value, name)
    if !value.is_a?(String)
      raise ArgumentError.new("#{name} should be a string")
    end
  end

  def validate_number(value, name)
    if !value.is_a?(Integer)
      raise ArgumentError.new("#{name} should be an integer")
    end
  end

  # def validate_positive(value, name)
  # end
end
