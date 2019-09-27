def consolidate_cart(cart)
 cart_hash = {}
  cart.each do |items| 
    items.each do |item, attributes|
 if cart_hash[item] 
   cart_hash[item][:count] += 1
 else cart_hash[item] = attributes
   cart_hash[item][:count] = 1
 end
 end
 end
 cart_hash
end

def apply_coupons(cart, coupons) 
  
  coupons.each do |coupon| 
    coupon.each do |attribute, value| 
      name = coupon[:item] 
    
      if cart[name] && cart[name][:count] >= coupon[:num] 
        if cart["#{name} W/COUPON"] 
          cart["#{name} W/COUPON"][:count] += 1 
        else 
          cart["#{name} W/COUPON"] = {:price => coupon[:cost], 
          :clearance => cart[name][:clearance], :count => 1} 
        end 
      cart[name][:count] -= coupon[:num] 
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
