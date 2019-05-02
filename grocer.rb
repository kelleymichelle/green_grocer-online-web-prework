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
      
      x = cart[item][:count] / coupon[:num]
      xx = cart[item][:count] % coupon[:num]
      price = coupon[:cost]
      thing = coupon[:item]
      y = cart[item][:clearance]
      #binding.pry
      if coupon.value? item
        new_cart["#{item} W/COUPON"] = {}
          new_cart["#{item} W/COUPON"][:price] = price
          new_cart["#{item} W/COUPON"][:clearance] = y
          new_cart["#{item} W/COUPON"][:count] = x
          new_cart[item][:count] = xx
  #binding.pry
      end
    end
  end
  cart = new_cart
  return cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
