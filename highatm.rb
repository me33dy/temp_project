# bank = {user1: info, user2: info, user3: info }
# bank_data = Hash.new { |user_name, user_info| hash[user_name] = Hash.userinfo }
	$bank_data = Hash.new(0)

	def open_accaount(user_name, password)
		@user_name  = user_name
		@password = password
		$bank_data[@user_name] = { password: @password, balance: 0 }
		puts "Your current balance is $ #{$bank_data[@user_name][:balance]}"
	end

	def deposit(user_name, add_mount)
		@user_name = user_name
		@add_mount = add_mount
		$bank_data[@user_name][:balance] += @add_mount
		puts "Your current balance is $ #{$bank_data[@user_name][:balance]}"
	end

	def withdrawl(user_name, add_mount)
		@user_name = user_name
		@add_mount = add_mount
		$bank_data[@user_name][:balance] -= @add_mount
		puts "Your current balance is $ #{$bank_data[@user_name][:balance]}"
	end

	def chk_balance(user_name)
		puts "Your current balance is $ #{$bank_data[@user_name][:balance]}"
	end


loop do
	print "Welcome to Very Secure Bank. How can I take your.. I mean take care of your money: 
	open account - 1, deposit - 2, withdrawl - 3, check balance -4, quit - 5"
	choice_action = gets.to_i
	case choice_action
		when 1
			print "Please enter your acount name: "
			account_name = gets.chomp
			print "Please set your password: "
			set_password = gets.chomp
			open_accaount(account_name, set_password)
		when 2
			print "Please enter your username: "
			username = gets.chomp
			print "Please enter your password: "
			password = gets.chomp
			print "Please enter the amount you would like to deposit: "
			amount = gets.to_i
			deposit(username, amount)
		when 3
			print "Please enter your username: "
			username = gets.chomp
			print "Please enter your password: "
			password = gets.chomp
			print "Please enter the amount you would like to withdrawl: "
			amount = gets.to_i
			withdrawl(username, amount)
		when 4
			print "Please enter your username: "
			username = gets.chomp
			print "Please enter your password: "
			password = gets.chomp
			chk_balance(username)
	end
end