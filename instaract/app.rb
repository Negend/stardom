require 'watir'
require 'selenium-webdriver'
require_relative 'interact.rb'
require_relative 'texts.rb'
Selenium::WebDriver::Chrome.driver_path = 'C:\Repos\stardom\drivers\chromedriver.exe'
@browser=Watir::Browser.new(:chrome)
@interacting = true
def program
	puts 'WELCOME TO INSTARACT'
	puts 'how do you wish to interact'
	puts '1. Follow tagged posts' 
	puts '2. Unfollow people'
	puts '3. Comment on tagged posts'
	puts '4. Placeholder'
	puts '5. Finish interaction'
	print 'Enter number and press enter: '
	@program =	gets.chomp
	case @program
	when '1' 
		print 'Which hashtag do you wish to interact with? '
		tag = gets.chomp
		interact = InteractTaggedPosts.new @browser,tag,'hi'
		print 'Number of posts to follow: ' 
		@auto_pilot_turned_on = interact.followposts gets.chomp.to_i
	when '2'
		@browser.goto('https://www.instagram.com/'+@username+'/following/')
		xb=1
		while xb<42
		@browser.buttons(text: "Following")[1].click!
		@browser.buttons(text: "Unfollow")[1].click!
		xb=+1
		end
	when '3' 
		@auto_pilot_turned_on = true
	when '4' 
	when '5' 
		@interacting = false
	else
		
	end
end

def login main_d 
	if(@username == 'nobody')
		@username = 'wheresnobody'
		password = 'ntochi'
	else
		print "Enter Password: "
		password = gets.chomp
	end
	main_d.goto("https://www.instagram.com/accounts/login/")
	main_d.input(name: "username").send_keys(@username)
	main_d.input(name: "password").send_keys(password)
	main_d.input(name: "password").send_keys(:enter)
	sleep 3
	main_d.button(text: "Not Now").click! if main_d.button(text: "Not Now").exists?
	
end
def solo_time activity
	interact = InteractTaggedPosts.new @browser,'humour',@username
	case activity.to_i
	when 1
		interact.self_drive_follow
	when 3
		interact.self_drive_comment
	end
end

puts 'WELCOME TO INSTARACT'
print 'who are you? '
@username = gets.chomp
login @browser

while @interacting
	@auto_pilot_turned_on = false
	program 
	solo_time @program if @auto_pilot_turned_on
end


 # search @main_d.text_field(index: 0).send_keys('hi')

# x = 0
# print "how many times: "
# z = gets.chomp.to_i

# print "how many seconds each: "     'https://www.instagram.com/'+@username+'/'
# y = gets.chomp.to_i

# puts "Number of plays"
# while (x < z) 
# 	main_d =  Watir::Browser.new(:chrome)
# 	main_d.goto(url)
# 	# main_d.a(:class => 'play-button').wait_until_present
# 	# main_d.a(:class => 'play-button').click
# 	x = x+1
# 	sleep(y)
# 	main_d.quit

# 	puts "  play "+x.to_s
# end
# puts "you are welcome"

