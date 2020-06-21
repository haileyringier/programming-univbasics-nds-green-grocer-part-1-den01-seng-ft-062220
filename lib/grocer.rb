def find_item_by_name_in_collection(name, collection)
  collection.each do |items| #array going through each element(hash)
   if items[:item] == name
      return items
    end
  end
  return nil
end

def consolidate_cart(cart)
  final_cart = []
  cart.each do |items| 
  item_exists = false
  
    final_cart.each do |elements|
      if elements[:item] == items[:item]
        item_exists = true
        elements[:count] = elements[:count] + 1
      end
    end
    
    if item_exists == false 
    items[:count] = 1
    final_cart << items
    end
    
    end
  return final_cart
end



  