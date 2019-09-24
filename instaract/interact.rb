

class InteractTaggedPosts


	def initialize browser,tag,user
		@main_d = browser
		@main_d.goto('https://www.instagram.com/explore/tags/'+tag)
		@followattempts = []
		@comment = InstaractMessages.new user
	end


	def followposts z
		posts = @main_d.element(tag_name: 'article')
		x = 1
		while (x < z) 
			begin
				posts.a(index: x).click!
				sleep 3
				@main_d.button(text: 'Follow').click! if @main_d.button(text: 'Follow').exists?
				@main_d.button(text: 'Close').click!
				sleep 8
				x = x+1
			rescue 
				puts x.to_s + ' posts looked through'
				puts Time.now.getutc
				@followattempts.push x
				return true
			end
			sleep 58
		end
		return failed = false
	end


	def commentposts tags,topic
		for i in 0...tags.length
			@main_d.goto('https://www.instagram.com/explore/tags/'+tags[i])
			posts = @main_d.element(tag_name: 'article')
			x = (18 - i)
			z = (21 - i)
			while (x < z) 
				posts.a(index: x).click!
				sleep 2
				@main_d.span(class: /glyphsSpriteComment/).click!
				sleep 1
				@main_d.element(aria_label: /Add/).send_keys(@comment.choose_comment(topic,x))
				sleep 2
				@main_d.button(text: 'Post').click!
				sleep 2
				@main_d.button(text: 'Close').click!
				sleep 4
				x = x+1
				puts 'Just commented on ' + x.to_s + ' posts'
				puts Time.now.getutc
				
			end
			sleep 58
		end
		return failed = false
	end


	def self_drive_follow
		tags = ['dadjokes','wisdom','morphsuits','bollywoodmemes','kyoto','bohai','singapore','Ajman','Seoul','osaka','memes','zentai','japaneseproverb','indianproverb','japaneseart','costume','photoart','nobody','kyoto','tokyo','maskart','african','conscioushiphop','woke','toon','music','skits','dadjokes','morphsuits','bollywoodmemes','kyoto','bohai','singapore','Ajman','Seoul','osaka','memes','zentai','japaneseproverb','indianproverb','japaneseart','costume','photoart','nobody','kyoto','tokyo','maskart','african','conscioushiphop','woke','toon','music','skits','dadjokes','morphsuits','bollywoodmemes','kyoto','bohai','singapore','Ajman','Seoul','osaka','memes','zentai','japaneseproverb','indianproverb','japaneseart','costume','photoart','nobody','kyoto','tokyo','maskart','african','conscioushiphop','woke','toon','music','skits','dadjokes']
		for i in 0...tags.length
			@main_d.goto('https://www.instagram.com/explore/tags/'+tags[i])
			followposts 100
			if i%5 == 0
				puts @followattempts.inject(0){|sum,x| sum + x } 
				print ' follow attempts made so far. Siesta time '
				puts Time.now.getutc
				sleep 57000 
				puts 'Be with ya in 2 hours'
				puts Time.now.getutc
				sleep 7000
				puts 'I am up and working'
				puts Time.now.getutc
			end
		end
	end

	def self_drive_comment 
		taghash = {
			cute: ["costume","cosplay"],
			suit: ["morphsuit","lycra","zentai"],
			africa: ["igbo","ghana","naija","africanproverbs",'owerri'],
			liar: ["nobodymemes", "nobodycandoit"],
			perfect: ["nobodyisperfect","nobodyperfect"],
			general: ['lagos','lekki','thisislagos','dadjokes','bollywoodmemes','kyoto','bohai','singapore','Ajman','Seoul','osaka','japaneseart','photoart','nobody','kyoto','tokyo','maskart'],
			care: ["nobodycare","nobodycares","nobodycaresaboutme"],
			know: ["nobodyknows"],
			shame: ["nobodyshame","nobodyshaming"],
			work: ["nobodyoutworksme"],
			better: ["nobodyisbetter"],
			fashion: ["fashion"],
			vegan: ['vegan','veg','gogreen'],
			green: ['sustauinablewear','gogreen'],
			trusted: ["trustnobody"],
			wise: ["wisdom","quoteoftheday","quoteofday","quote","quotes","proverb",'conscioushiphop','woke']
		}
		tags = taghash.keys
		for i in 0...tags.length
			commentposts taghash[tags[i]],tags[i]
		end
	end

	def self_drive_unfollow
		tags = ['dadjokes','wisdom','morphsuits','bollywoodmemes','kyoto','bohai','singapore','Ajman','Seoul','osaka','memes','zentai','japaneseproverb','indianproverb','japaneseart','costume','photoart','nobody','kyoto','tokyo','maskart','african','conscioushiphop','woke','toon','music','skits','dadjokes','morphsuits','bollywoodmemes','kyoto','bohai','singapore','Ajman','Seoul','osaka','memes','zentai','japaneseproverb','indianproverb','japaneseart','costume','photoart','nobody','kyoto','tokyo','maskart','african','conscioushiphop','woke','toon','music','skits','dadjokes','morphsuits','bollywoodmemes','kyoto','bohai','singapore','Ajman','Seoul','osaka','memes','zentai','japaneseproverb','indianproverb','japaneseart','costume','photoart','nobody','kyoto','tokyo','maskart','african','conscioushiphop','woke','toon','music','skits','dadjokes']
		for i in 0...tags.length
			@main_d.goto('https://www.instagram.com/explore/tags/'+tags[i])
			followposts 100
			if i%5 == 0
				puts @followattempts.inject(0){|sum,x| sum + x } 
				print ' follow attempts made so far. Siesta time '
				puts Time.now.getutc
				sleep 50000
				puts 'Be with ya in 2 hours'
				puts Time.now.getutc
				sleep 7000
				puts 'I am up and working'
				puts Time.now.getutc
			end
		end
	end

end
