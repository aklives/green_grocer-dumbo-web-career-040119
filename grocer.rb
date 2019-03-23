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

    fruit_name = coupons[:item]
    new_coupon_hash = {
      :price => coupons[:cost],
      :clearance => "true",
      :count => coupons[:num]
    }

     if cart.key?(fruit_name)
      new_coupon_hash[:clearance] = cart[fruit_name][:clearance]
      if cart[fruit_name][:count]>= coupons[:num]

        cart[fruit_name][:count] -= coupons[:num]
      end
      cart[fruit_name + " W/COUPON"] = new_coupon_hash
    end

  return cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
