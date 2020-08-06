require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  container = 0 
  while container < collection.length do 
    collection.each do |key|
      if key[:item] == name
        return collection[container]
      end
      container += 1 
    end
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  up_cart = []
  container = 0
  count = 1 
  while container < cart.length do
    up_hash = cart[container]
    # binding.pry
    up_hash[:count] = count
    if !up_cart.include?(up_hash)
      up_cart << up_hash
    elsif up_cart.include?(up_hash)
      up_hash[:count] = count + 1
    end
    container += 1
  end
  up_cart
  # binding.pry
end


  