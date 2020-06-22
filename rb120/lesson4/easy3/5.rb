class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

tv = Television.new
tv.manufacturer # wouldn't work. no instance method
tv.model # works. instance method available

Television.manufacturer # works. class method available
Television.model # doesn't work. no class method available

