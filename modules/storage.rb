module Storage
  def save_to_yaml(collection)
    file_name = "./data/#{collection.first.class.to_s.downcase}s.yml"
    File.open(file_name, "w") { |file| file.write(collection.to_yaml) }
  end

  def load(collection)
    Psych.load_file("./data/#{collection}.yml")
  rescue Errno::ENOENT
    File.write("./data/#{collection}.yml", [].to_yaml)
    retry
  end
end
