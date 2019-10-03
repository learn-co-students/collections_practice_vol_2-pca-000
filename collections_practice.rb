def begins_with_r(arr)
  status = true
  arr.each do |a|
    answer = a.start_with?("r")
    status = false unless answer == true
  end
  status
end

def contain_a(arr)
  a_word = []
  arr.each do |a|
    if a.include?("a")
      a_word << a
    end
  end
  a_word
end

def first_wa(arr)
  return result = arr.find{ |el| el.to_s.start_with?("wa") }
end

def remove_non_strings(arr)
  result = []
  arr.each do |a|
    if a.class == String
      result << a
    end
  end
  result
end

def count_elements(arr)
  arr.each do |obj|
    obj[:count] = 0
    name = obj[:name]
    arr.each do |hash|
      if hash[:name] == name
        obj[:count] += 1
      end
    end
  end.uniq
end

def merge_data(arr1, arr2)
  arr2[0].map{ |fname, motto|
    new_hash = {}
    arr1.each do |info|
      if info[:first_name] == fname
        new_hash = motto.merge(info)
      end
    end
    new_hash
  }
end

def find_cool(arr)
  cool = []
  arr.each do |el|
    if el[:temperature] == 'cool'
      cool << el
    end
  end
  cool
end

def organize_schools(schools)
  new_schools = {}
  schools.each do |school, location_hash|
    location = location_hash[:location]
    if new_schools[location]
      new_schools[location] << school
    else
      new_schools[location] = [school]
    end
  end
  new_schools
end
