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

  cart.each do |item, data|
    
    coupons.each do |coupon|
      
      x = cart[item][:count] - coupon[:num]
      
      price = coupon[:cost]
      
      thing = coupon[:item]
      binding.pry
      cart["#{thing} W/ COUPON"] = {}
      binding.pry
      if coupon.value? item
        # cart["#{item} W/ COUPON"] = {}
          cart["#{item} W/ COUPON"][:price] = price
        binding.pry
      if cart[item][:clearance] == true
        cart["#{item} W/COUPON"][:clearance] = true
        binding.pry
      else !cart[item][:clearance]
        cart["#{item} W/COUPON"][:clearance] = false
        binding.pry
      
      cart["#{item} W/ COUPON"][:count] = x
      
  binding.pry
            
        
        end
      end
    end
  end
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
