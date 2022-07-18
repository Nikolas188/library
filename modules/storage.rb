module Storage
  def save_to_yaml(collection)
    file_name = "./date/#{collection.first.class.to_s.downcase}s.yml"
    File.open(file_name, "w") { |file| file.write(collection.to_yaml) }
  end
end
