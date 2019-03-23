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
  coupons.each do |coupon_hash|
    fruit_name = coupon_hash[:item]
    new_coupon_hash = {
      :price => coupon_hash[:cost],
      :clearance => "true",
      :count => coupon_hash[:num]
    }

     if cart.key?(fruit_name)
      new_coupon_hash[:clearance] = cart[fruit_name][:clearance]
      if cart[fruit_name][:count]>= coupon_hash[:num]

        cart[fruit_name][:count] -= coupon_hash[:num]
      end
      cart[fruit_name + " W/COUPON"] = new_coupon_hash
    end
    end
  return cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
