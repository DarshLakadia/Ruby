SHOP_NAME = "Lakadia Computers"
COMPANY_NAME = "Lakadia & Sons"
class Product
	def initialize(name,price)
		@product_name = name
		@product_price = price
		puts "Enter Your Name"
		@name = gets.chomp
		puts "Enter GST"
		@gst = gets.chomp.to_i
	end
	#def get_user
	#end
	def gstcalc()
		puts "Welcome to #{SHOP_NAME}"
		puts "Welcome #{@name}. Your invoice with #{@gst}% gst are below"
		@calc = (@gst * @product_price / 100)
		@gst_price = @product_price + @calc
		puts "product details"
		print "#{COMPANY_NAME} #{@product_name} - #{@gst_price} \n" 
	end
end

product = Product.new('cpu',100)
product.gstcalc()
#product1.get_user
#product.get_user

