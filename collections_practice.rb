# your code goes here
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find do |key, value|
    if key.to_s.start_with?('wa')
      return key
    elsif value.to_s.start_with?('wa')
      return value
    end
  end
end

def remove_non_strings (array)
  string = []
  array.collect do |element|
    if element.class == String
      string << element
    else
      false
    end
  end
  string
end

def count_elements(array)
  element_count = []
  array.each do | element |
    counter = element[:count] = 1
    if element_count.include?(element) == false
      element_count << element
  elsif element_count.include?(element)
      element_count.map do |thing|
        thing[:count] += 1
      end
    end
  end
  element_count
end

def merge_data(keys, data)
  i = 0
  while i < keys.length
    data.each do |element|
      element.each do |k, v|
        if keys[i].has_value?(k)
          keys[i].merge!(v)
        end
      end
    end
  i+=1
  end
  keys
end

def find_cool(array)
  i = 0
  cool_array = [];
  while i < array.length do
    array[i].collect do | key, values |
      if values == "cool"
        cool_array << array[i]
      return cool_array
      end
    end
    i+=1
  end
end

def organize_schools(school)
  output = {}
  schools.each do |key, location_hash|
    location_hash.each do |k, location|
      if !output.has_key?(location)
        output[location] = [key]
      elsif output.has_key?(location)
        output[location] << key
      end
    end
  end
  output
end

