def begins_with_r(array)
  array.all?{|x| x.start_with?("r")}
end

def contain_a(array)
  array.select{|x| x.include?("a")}
end

def first_wa(array)
  array.select{|x| x.is_a?(String)}.find{|x| x.start_with?("wa")}
end

def remove_non_strings(array)
  array.select!{|x| x.is_a?(String)}
end

def count_elements(array)
  unique_elements = array.uniq
  unique_elements.collect do |x|
    count = array.select{|y| x == y}.length
    x.merge({:count => count})
  end
end

def merge_data(collection1, collection2)

  collection1.collect { |x| x.merge(collection2[0][x[:first_name]])}

end

def find_cool(collection)
  collection.select{|x| x[:temperature] == "cool"}
end

def organize_schools(collection)
  cities = collection.values.collect{|x| x[:location]}.uniq
  final = Hash.new
  cities.each do |x|
    schools = []
    collection.each{|k,v|  schools << k if v[:location] == x }
    final[x] = schools
  end
  final
end
