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
new_cart = {}
  cart.each do |item, data|
    new_cart[item] = data
    coupons.each do |coupon|
      updated_count = cart[item][:count] % coupon[:num]
      price = coupon[:cost]
      y = cart[item][:clearance]
      #binding.pry
      
      if new_cart["#{item} W/COUPON"] && coupon.value?(item)
        new_cart["#{item} W/COUPON"][:count] += 1
         #binding.pry
      elsif coupon.value? item
        new_cart["#{item} W/COUPON"] = {}
          new_cart["#{item} W/COUPON"][:price] = price
          new_cart["#{item} W/COUPON"][:clearance] = y
          new_cart["#{item} W/COUPON"][:count] = 1
          new_cart[item][:count] = updated_count
      
  #binding.pry
      end
    end
  end
  #cart = new_cart
  #binding.pry
  return new_cart
end

def apply_clearance(cart)
  cart.each do |item, data|
    x = cart[item][:price]
    new_price = (x * 0.8).round(2)
     if cart[item][:clearance] == true
        cart[item][:price] = new_price
    end
  end
end

def checkout(cart, coupons)
  
end
