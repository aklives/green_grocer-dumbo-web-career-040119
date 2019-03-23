def consolidate_cart cart
  new_cart = {}
  cart.each do |item_hash|
    item_hash.each do |item_string, value_hash|
      new_cart[item_string] ||= value_hash
      new_cart[item_string][:count] ||= 0
      new_cart[item_string][:count] += 1
    end
  end
new_cart
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
