# frozen_string_literal: true

# The challenge is to create a restaurant app. The catch is you have to use classes. Let's break this down:

# Think about what a restaurant app should be able to do. For example, it should have a way to display the menu to the customers. It should be able to take orders. It should be able to calculate the total orders for different customers. Think about if the orders need to be a separate class.

# The app can be as simple as you want it to be - if you're comfortable with just one class, just use one class.

# Before you start coding, discuss with your partner and write down all your ideas. Then start coding. Hope you have fun!
require 'tty'

font = TTY::Font.new(:doom)
prompt = TTY::Prompt.new
table = TTY::Table.new %w[Item Price], [['Burger', '$10.00'], ['Fries', '$3.50'], ['Coke', '$2.00']]

class Restaurant
  attr_reader :menu, :boss
  attr_accessor :staff, :cooks, :orders, :orderIds

  def initialize(menu, boss, staff, cooks)
    @menu = menu
    @boss = boss
    @staff = staff
    @cooks = cooks
    @orders = []
    @orderIds = []
  end

  def promptOrder(prompt)
    choices = %w[Burger Fries Coke]
    selection = prompt.multi_select('Select food ?', choices)
    orderDetail(selection, prompt)
  end

  def orderDetail(_selection, prompt)
    foods = []

    _selection.each do |food|
      foods.push(food)
    end

    result = prompt.collect do
      foods.each do |food|
        key(food.downcase.to_sym).ask("How many would you like for #{food}", convert: :int)
      end
    end
    orderId = rand(1..1000)
    orderIds.push(orderId)
    order = { orderId: orderId, burger: result[:burger] || 0, fries: result[:fries] || 0, coke: result[:coke] || 0 }
    takeOrder(order)
  end

  def takeOrder(order)
    @orders.push(order)
  end

  def calculateBill(_orderId)
    # stuff going to be here
    @orders.each do |_order|
      next unless _order[:orderId] == _orderId

      burgerPrice = _order[:burger].to_f * 10.0
      cokePrice = _order[:coke].to_f * 2
      friesPrice = _order[:fries].to_f * 3.5

      total_price = burgerPrice + friesPrice + cokePrice
      puts "The total bill comes to #{total_price}"
    end
  end
end

burger = { burger: 10 }
coke = { coke: 2 }
fries = { fries: 3.5 }

wendy = Restaurant.new([burger, coke, fries], 'Timmy', %w[Staff1 Staff2], %w[Jimmy Ronny Peter])
puts font.write("Wendy's", letter_spacing: 4)
puts table.render(:ascii)
puts '-------------------'
wendy.promptOrder(prompt)
# puts wendy.orders
wendy.calculateBill(wendy.orderIds[0])
