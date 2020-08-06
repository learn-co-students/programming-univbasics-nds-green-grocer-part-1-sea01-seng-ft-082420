require 'pry'
def find_item_by_name_in_collection(name, collection)
  collection.each do |element|
    if element[:item] == name  
      return element
    end
  end
  return nil
end

def consolidate_cart(cart)
  hash = {}
  cart.each do |cart_item|
    key = cart_item
    value  = hash[key]  
    if  value == 1
      hash[key] = value + 1
    else
      hash[key] = 1
    end
  end
  arr = []
  hash.each do |key, value|
    data = {
      :item => key[:item],
      :price => key[:price],
      :clearance => key[:clearance],
      :count => value,
    }
    arr << data
  end
  arr
end


  