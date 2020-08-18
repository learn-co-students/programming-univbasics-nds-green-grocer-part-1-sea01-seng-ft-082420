require 'pry'
def find_item_by_name_in_collection(name, collection)
collection.each_with_index do |catigory,index|
if catigory[:item]===name
  return collection[index]
end
end
return nil
end


def consolidate_cart(cart)
ccart=[]
i=0
cart.each do |key|
  if ccart===[]
    ccart.push key
    ccart[0][:count]=1
  else if ccart[i][:item] != key[:item]
    ccart.push key
    i+=1
    ccart[i][:count]=1
  else if key[:item]===ccart[i][:item]
      ccart[i][:count]+=1
    end
  end
end
end
return ccart
end
