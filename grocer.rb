require 'pry'
def consolidate_cart(cart)
  cart.each do |item|
    item[:count] = 1
    item.each do |item_key, item_values|
      if item.include? item_key
        item[:count] += 1
    binding.pry
      end
    end
  end.uniq
  #binding.pry
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
