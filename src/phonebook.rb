class PhoneBook
    def initialize
      @entries = {}
    end
  
    def add(name, number, is_listed)
      return false if @entries.key?(name)
      return false unless number =~ /^[1-9]\d{2}-\d{3}-\d{4}$/
      if is_listed
        @entries.each do |_, entry|
          return false if entry[:number] == number && entry[:listed] == true
        end
      end
      @entries[name] = { number: number, listed: is_listed }
      true
    end
  
    def lookup(name)
      return nil unless @entries.key?(name)
      entry = @entries[name]
      entry[:listed] ? entry[:number] : nil
    end
  
    def lookupByNum(num)
      @entries.each do |name, entry|
        return name if entry[:number] == num && entry[:listed]
      end
      nil
    end
  
    def namesByAc(areacode)
      result = []
      @entries.each do |name, entry|
        result << name if entry[:number].start_with?(areacode)
      end
      result
    end
  end

