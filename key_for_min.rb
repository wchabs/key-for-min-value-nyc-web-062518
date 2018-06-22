# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash == {}
    return nil
  else
    lowest_val = 0
    lowest_pair_key = ""
    name_hash.each do |item, value|
      if lowest_val == 0 && lowest_pair_key == ""
        lowest_val = value
        lowest_pair_key = item
      elsif value < lowest_val
        lowest_val = value
        lowest_pair_key = item
      end
    end
    lowest_pair_key
  end
end