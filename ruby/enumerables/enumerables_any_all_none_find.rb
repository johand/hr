# Ruby offers various enumerables on collections that check for validity of the
# objects within it.

# Consider the following example:

# > arr = [1, 2, 3, 4, 5, 6]
# => [1, 2, 3, 4, 5, 6]
# > h = {"a" => 1, "b" => 2, "c" => 3}
# => {"a" => 1, "b" => 2, "c" => 3

# The any? method returns true if the block ever returns a value other than
# false or nil for any element passed to it:

# checks if any number in the array is even
# > arr.any? {|a| a % 2 == 0}
# => True

# checks if any value of the Hash object is of the type String
# > h.any? {|key, value| value.is_a? String}
# => False

# The all? method returns true if the block never returns false or nil for any
# element passed to it:

# checks if all elements of the array are of the type Integer
# > arr.all? {|a| a.is_a? Integer}
# => True

# checks if all keys of the Hash object are of the type String
# > h.all? {|key, value| key.is_a? String}
# => True

# The none? method returns true if the block never returns true for any element
# passed to it:

# Checks if none of the elements in the array are of nil type
# > arr.none? {|a| a.nil?}
# => True

# checks if all values of the Hash object are less than 3
# > h.none? {|key, value| value < 3}
# => False

# The find method returns the first element for which block is not false:

# returns the first element greater than 5 and `nil` if none satisfies the
# condition
# > arr.find {|a| a > 5}
# => 6

# returns an Array of the first match [key, value] that satisfies the condition
# and nil otherwise
# > h.find {|key, value| key == "b"}
# => ["b", 2]

def func_any(hash)
  # Check and return true if any key object within the hash is of the type
  # Integer
  # If not found, return false.
  hash.any? { |k, v| k.is_a? Integer }
end

def func_all(hash)
  # Check and return true if all the values within the hash are Integers and are
  # < 10
  # If not all values satisfy this, return false.
  hash.all? { |k, v| v.is_a?(Integer) && v < 10 }
end

def func_none(hash)
  # Check and return true if none of the values within the hash are nil
  # If any value contains nil, return false.
  hash.none? { |k, v| v.nil? }
end

def func_find(hash)
  # Check and return the first object that satisfies either of the following
  # properties:

  # 1. There is a [key, value] pair where the key and value are both Integers
  # and the value is < 20

  # 2. There is a [key, value] pair where the key and value are both Strings and
  # the value starts with `a`.

  hash.find do |k, v|
    (k.is_a?(Integer) && v.is_a?(Integer) && v < 20) ||
      (k.is_a?(String) && v.is_a?(String) && v.start_with?('a'))
  end
end
