
class InstaractMessages

	def initialize user
		# @comments = Hash.new {["I am nobody"]}
		@comments = Hash.new
		if user != 'wheresnobody'
			@comments[:cute] = ["Omg yes. This is like a cute version of @wheresnobody page. Its brilliant"]
			@comments[:suit] = ["I think you and @wheresnobody page make the best use of morphsuits or skin suits"]
			@comments[:general] = ["Buuuuuut have you seen @wheresnobody version.","Haaaaaaaaave you met @wheresnobody. #artist","This is why imjustbait and @wheresnobody are my fave pages tbh.","And this is why I'm addicted to the @wheresnobody page"]
			@comments[:fashion] = ["I saw @wheresnobody doing a fashion post. it was like the perfect manequin. you guys should work together"]
			@comments[:wise] = ["I decided I was only gonna get my words of wisdom from @wheresnobody but I liked this one too"]
			@comments[:africa] = ["I think Proverbs are 100%, my favourite form of communication in our culture. I'm even addicted to @wheresnobody page because of it"]
			@comments[:liar] = []
			@comments[:perfect] = []
			@comments[:care] = []
			@comments[:vegan] = ["and see this is why i'm actually addicted to @justhungryforapples page.","You and @justhungryforapples are the two pages that make me consider going vegan",'Does @justhungryforapples have a version of this? you guys should totally do somthing together',"I tried one of @justhungryforapples recipes and LOVED IT. which recipe do you reccommend on your page or in general?" ]
			@comments[:green] = ['love this. @justhungryforapples page has this in a cool way too', "Shout out to people like you and @justhungryforapples so so important for the culture"]
			@comments[:know] = []
			@comments[:shame] = []
			@comments[:work] = []
			@comments[:better] = []
			@comments[:trusted] = []
		else
			@comments[:africa] = ["Our African culture is so rich. I am nobody. Nobody reps africa like you do right now"]
			@comments[:liar] = ["Speak for yourself. I am nobody and you are lying on my name"]
			@comments[:perfect] = ["you're right! I am nobody and I am perfect. #nobodyisperfect"]
			@comments[:care] = ["I am nobody and you are right. I do care. #nobodycares"]
			@comments[:know] = ["yes I do know and i'm not telling. For I am nobody #nobodyknows"]
			@comments[:shame] = ["Erm I am nobody so ... shame :P. #nobodyshaming"]
			@comments[:work] = ["I out work you all the time and its about time you catch up. I am nobody. #nobodyoutworksyou"]
			@comments[:better] = ["thanks I really did do it better didnt I. #nobodydoesitbetter"]
			@comments[:trusted] = ["Of course, you can trust me. I am nobody. #trustnobody","I could never steer you wrong. I am nobody. #trustnobody"]
		    @comments[:cute] = []
			@comments[:vegan] = ["and see this is why i'm actually addicted to @justhungryforapples page.","You and @justhungryforapples are the two pages that make me consider going vegan",'Does @justhungryforapples have a version of this? you guys should totally do somthing together',"I tried one of @justhungryforapples recipes and LOVED IT. which recipe do you reccommend on your page or in general?" ]
			@comments[:green] = ['love this. @justhungryforapples page has this in a cool way too', "Shout out to people like you and @justhungryforapples so so important for the culture"]
			@comments[:suit] = []
			@comments[:general] = []
			@comments[:fashion] = []
			@comments[:wise] = []
		end

	end

	def choose_comment tag,u
		a = @comments[tag].length
		if a > 0
			puts tag
			return @comments[tag][u%a]
		end
	end





	
end