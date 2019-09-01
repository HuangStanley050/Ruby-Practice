# frozen_string_literal: true

# The challenge is to create a restaurant app. The catch is you have to use classes. Let's break this down:

# Think about what a restaurant app should be able to do. For example, it should have a way to display the menu to the customers. It should be able to take orders. It should be able to calculate the total orders for different customers. Think about if the orders need to be a separate class.

# The app can be as simple as you want it to be - if you're comfortable with just one class, just use one class.

# Before you start coding, discuss with your partner and write down all your ideas. Then start coding. Hope you have fun!

class Restaurant
  attr_reader :menu, :boss
  attr_accessor :staff, :cooks, :orders

  def initialize(menu, boss, staff, cooks)
    @menu = menu
    @boss = boss
    @staff = staff
    @cooks = cooks
    @orders = []
  end

  # menu will be array of hash to have key value for the price of each item
  # order will be an hash with key of order number, and the menu item
  # {customer:"Alex", orderId:1, burger: 2 , fries: 1, coke: 2}
  def takeOrder(order)
    @orders.push(order)
  end

  def caculateBill(_orderId)
    # stuff going to be here
    @orders.each do |_order|
      next unless _order[:orderId] == _orderId

      burgerPrice = _order[:burgers].to_f * 10.0
      cokePrice = _order[:coke].to_f * 2
      friesPrice = _order[:fries].to_f * 3.5

      total_price = burgerPrice + friesPrice + cokePrice
      puts total_price
    end
end
end

burger = { burger: 10 }
coke = { coke: 2 }
fries = { fries: 3.5 }

first_order = { customer: 'John', orderId: 1, burgers: 2, fries: 1, coke: 1 }
second_order = { customer: 'Rob', orderId: 2, burgers: 0, fries: 10, coke: 3 }

wendy = Restaurant.new([burger, coke, fries], 'Timmy', %w[Staff1 Staff2], %w[Jimmy Ronny Peter])
wendy.takeOrder(first_order)
wendy.takeOrder(second_order)
wendy.caculateBill(1)
