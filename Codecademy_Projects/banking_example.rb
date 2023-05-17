class Account
  attr_reader :name, :balance, :pin_number
  attr_writer :choice

  def initialize(name, balance, pin_number, choice)
    @name = name
    @balance = balance
    @pin_number = pin_number
    @choice = choice
  end

  private

  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end

  public

  def display_balance
    puts "Enter your PIN: "
    entered_pin = gets.chomp.to_i

    if entered_pin == pin && @choice == "Display"
      puts "Balance: $#{@balance}."
    else
      puts pin_error
    end
  end

  def withdraw
    puts "Enter your PIN: "
    entered_pin = gets.chomp.to_i

    if entered_pin == pin
      puts "Enter the amount to withdraw: "
      amount = gets.chomp.to_i

      if amount <= @balance
        @balance -= amount
        puts "Withdrew #{amount}. New balance: $#{@balance}."
      else
        puts "Insufficient funds."
      end
    else
      puts pin_error
    end
  end

  def deposit
    puts "Enter your PIN: "
    entered_pin = gets.chomp.to_i

    if entered_pin == pin
      puts "Enter the amount to deposit: "
      amount = gets.chomp.to_i

      @balance += amount
      puts "Deposited #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
end

puts "Hello and welcome to the Ruby Gem Bank."
puts "What would you like to do today?\nDisplay?\nWithdraw?\nDeposit? "
choice = gets.chomp

checking_account = Account.new("Test", 1000, 1234, choice)

if choice == "Display"
  checking_account.display_balance
elsif choice == "Withdraw"
  checking_account.withdraw
elsif choice == "Deposit"
  checking_account.deposit
else
  puts "Invalid choice."
end


