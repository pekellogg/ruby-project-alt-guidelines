# consumer
#t.string :name
20.times do
    Consumer.create(name: Faker::FunnyName.name)
end

# content
# t.date :date
# t.string :title
# t.integer :rating
# t.string :category <-- removed 012821

titles = ["The funniest and most humorous cat videos ever! - Funny cat compilation",
    "Cute and Funny Cat Videos to Keep you Smiling",
    "Videos for Cats to Watch - 8 Hour Bird Bonanza",
    "Funniest Cats - Try not to Laugh",
    "CATS will make you LAUGH YOUR HEAD OFF - Funny CAT compilation",
    "Baby Cats - Cute and Funny Cat Videos Compilation # 34 | Aww Animals",
    "Baby Cats - Cute and Funny Cat Videos Compilation #8 | Aww Animals",
    "Videos for Cats to Watch : Birds Being Awesome - Watch at Home with Your Cat",
    "cat videos for cats to watch - Beautiful Birds and Squirrels in Canadian Forest",
    "Funny Cat Videos - Cat videos 2020 | Life Funny Pets",
    "CAT GAMES - CATCHING FISH 1 HOUR VERSION (VIDEOS FOR CATS TO WATCH)",
    "Calming Videos for Cats - TV to Relax Your Cat and My Cat at Home : The Bird Garden",
    "[CAT GAMES]MIX5.5 Rope,Mouse,etc.30min.",
    "THE BEST CUTE AND FUNNY CAT VIDEOS OF 2019!",
    "Cat Games : Mouse Watch TV Spectacular ~ ",
    "Videos for Cats to Watch on TV - Forest Birds Adventure",
    "Funny Cats ✪ Cute and Baby Cats Videos Compilation #85",
    "CAT GAMES - Catching Mice! Entertainment Video for Cats to Watch.",
    "Baby Cats - Cute and Funny Cat Videos Compilation #37 | Aww Animals",
    "Cat TV 2020: 8 Hours - Birds for Cats to Watch, Relax Your Pets, Beautiful Birds, Squirrels."
]
ratings = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

20.times do
    Content.create(date: Faker::Date.between(from: '2000-01-01', to: '2021-01-28'), title: titles.sample, rating: ratings.sample)
end


comments = ["Whoa, that is one srsly cute cat. <3 <3 <3",
            "I wish my cat could jump like that one.",
            "I give 10/10 for effort on the cat's part.",
            "Ummmm I would be so mad if my cat did that",
            "D'awwwww lil' bebe",
            "bet you looked 'cat videos' up out of boredom or fear",
            "mom: the internet is a dangerous place! the internet:",
            "I'm here because I had a random breakdown and something told me i better watch funny cat videos to feel better",
            "1:18 me when there's a heated floor.",
            "part of me wishes there wasn’t music. if i wanted music i’d put it on another video tbh",
            "I never knew cats chased their tails like dogs xd",
            "THE CAT RIDING THE TURTLE WAS THE MOST ADORABLE THING I HAVE EVER SEEN",
            "cat falls off shelf: people INTERESTING",
            "Cats make wonderful pets and video stars, too!",
            "I remember when these were trending in 2016 ah the not so good ol days",
            "i found this video from a discord raid, apparently not ALL raids are harmfull",
            "I needed this after being of the weird side of youtube"
        ]

# comment
# should also create a consumer id and content id
    # t.date :date
    # t.string :text # chose string vs. text datatype due to 255 char limit
    # t.integer :user_id
    # t.integer :content_id
20.times do
    Comment.create(date: Faker::Date.between(from: '2021-01-28', to: '2021-01-28'), text: comments.sample, user_id: Consumer.all.ids.sample, content_id: Content.all.ids.sample)
end