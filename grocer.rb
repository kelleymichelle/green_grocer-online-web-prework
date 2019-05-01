require 'pry'
def consolidate_cart(cart)
  new_hash = {}
  cart.each do |item|
    item.each do |item_key, item_values|
      if new_hash[item_key]
        new_hash[item_key][:count] += 1
      else 
        new_hash[item_key] = item_values
          new_hash[item_key][:count] = 1
      end
    end
  end
  new_hash
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
