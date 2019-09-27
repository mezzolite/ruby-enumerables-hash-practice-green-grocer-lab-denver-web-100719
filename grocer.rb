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
    item = coupon[:item]
  if cart[item] && coupon[:item][:coupon] >= coupon[:num] && cart["#{item} W/COUPON"]
end
end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
