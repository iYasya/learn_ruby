class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    if entry.class == String
      entry = {entry => nil}
    end

    entry.each do |key, value|
      @entries[key] = value
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    @entries.include? key
  end

  def find(prefix)
    found_entry = {}

    @entries.each do |key, value|
      if key =~ /^#{prefix}/
        found_entry[key] = value
      end
    end
    found_entry
  end

  def printable
    entry_out = []

    @entries.sort.each do |key, value|
       entry_out << "[#{key}] \"#{value}\""
    end
    entry_out.join("\n")
  end
end