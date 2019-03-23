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

def apply_coupon cart, coupons
  if coupons.size < 3
    coupons.each do |c_hash|
      fruit = c_hash[:item]
      new_coupon_hash = {
        price: c_hash[:cost],
        clearance: true,
        count: c_hash[:num]
      }
    end
  end
  if coupons.size == 3
    fruit = coupons[:item]
    new_coupon_hash = {
      price: coupons[:cost],
      clearance: true,
      count: coupons[:num]
    }
  
    cart.each do |item, cart_hash|
      if item == coupons[:item]
        cart_hash[:count] -= coupons[:num]
      end
    end
    cart["#{fruit} W/COUPON"] = new_coupon_hash
  end
cart   
end   

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
