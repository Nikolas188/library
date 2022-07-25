module Storage

  def save_to_yaml(collection)
    file_name = "./data
    /#{collection.first.class.to_s.downcase}s.yml"
    File.open(file_name, "w") { |file| file.write(collection.to_yaml) }
  end

  def load(collection)
    Psych.safe_load(
      File.read("./data/#{collection}.yml"), permitted_classes: [Author, Date, Book, Reader, Order]
    )
  end
end
