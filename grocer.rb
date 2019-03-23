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
  hash = cart
  coupons.each do |coupon_hash|
    # add coupon to cart
    item = coupon_hash[:item]

    if !hash[item].nil? && hash[item][:count] >= coupon_hash[:num]
      temp = {"#{item} W/COUPON" => {
        :price => coupon_hash[:cost],
        :clearance => hash[item][:clearance],
        :count => 1
        }
      }

      if hash["#{item} W/COUPON"].nil?
        hash.merge!(temp)
      else
        hash["#{item} W/COUPON"][:count] += 1
        #hash["#{item} W/COUPON"][:price] += coupon_hash[:cost]
      end

      hash[item][:count] -= coupon_hash[:num]
    end
  end
  hash
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
