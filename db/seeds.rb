Event.destroy_all
User.destroy_all
Attendee.destroy_all

Event.create(id: 1, title: 'Shut Up and Take My Money!', max_tix: 50, date_time: Time.zone.local(2015,05,22,9,0,0), description: "That's what you'll say when you arrive at Beardo.com")
Event.create(id: 2, title: 'GitHub and PornHub: A Conversation', max_tix: 50, date_time: Time.zone.local(2015,05,22,9,30,0), description: "PornHub and GitHub. A compare and contrast conversation.")
Event.create(id: 3, title: 'Donutfindr', max_tix: 50, date_time: Time.zone.local(2015,05,22,10,00,0), description: "Finding Donuts and deleting friends, in the flick of a thumb.")
Event.create(id: 4, title: 'Table-flipping: A Database Hate Story', max_tix: 50, date_time: Time.zone.local(2015,05,22,10,30,0), description: "Flipping tables never felt so good!")
Event.create(id: 5, title: 'From Code Monkey to Code Gorilla.', max_tix: 50, date_time: Time.zone.local(2015,05,22,11,00,0), description: "'From Code Monkey to Code Gorilla. Channelling the Alpha Nerd Within.")
Event.create(id: 6, title: 'You’re Doing it Wrong', max_tix: 50, date_time: Time.zone.local(2015,05,22,11,30,0), description: "No really...just stop, NOW!")
Event.create(id: 7, title: 'Streamlining the Back-End', max_tix: 50, date_time: Time.zone.local(2015,05,22,13,00,0), description: "Like Python and Ruby, Back-end Developers Should Stay in the Ground or in the Jungle. Streamlining the Back-End.")
Event.create(id: 8, title: 'Floats Should Only Be Used in Moomba Parades.', max_tix: 50, date_time: Time.zone.local(2015,05,22,13,30,0), description: "")
Event.create(id: 9, title: 'Internet Explorer is the Greatest Browser.', max_tix: 50, date_time: Time.zone.local(2015,05,22,14,00,0), description: "He's not joking")
Event.create(id: 10, title: 'Set the Tables in Order.', max_tix: 50, date_time: Time.zone.local(2015,05,22,14,30,0), description: "Set the Tables in Order: A Database Love Story")
Event.create(id: 11, title: 'Better Coding Through Sleeping', max_tix: 50, date_time: Time.zone.local(2015,05,22,15,00,0), description: "Coding when sleeping. Or, How I managed to fit in another 8 hours of coding per day.")
Event.create(id: 12, title: 'Acronyms in Tech. A Userguide', max_tix: 50, date_time: Time.zone.local(2015,05,22,15,30,0), description: "Acronyms in Tech. A Userguide: Talking Sass, CSS, HTML, IDK, WTF")
Event.create(id: 13, title: 'Angry Milo', max_tix: 50, date_time: Time.zone.local(2015,05,22,16,00,0), description: "No copyright infringements intended")
Event.create(id: 14, title: 'What’s Yours is MineCraft', max_tix: 50, date_time: Time.zone.local(2015,05,22,16,30,0), description: "Open-source means it's not yours. It's MINE!")
Event.create(id: 15, title: 'GFMUH', max_tix: 50, date_time: Time.zone.local(2015,05,22,17,00,0), description: "GFMUH, pronounced gif-muh. It's not that hard.")
Event.create(id: 16, title: 'The Computer and the Chair', max_tix: 50, date_time: Time.zone.local(2015,05,22,17,30,0), description: "The Problem Exists Between the Computer and the Chair. Stories from the Developer in residence.")

User.create(id: 1, name: 'Matt Cameron', email: 'mattlbcameron@gmail.com', password: 'password', bio: "Matt’s own company, Beardo, has taken shopping online for fake beards to a whole new level. Remember when fake beards were itchy? Me too. But now you can buy the Rolls Royce of fake beards through his online portal. Matt will share his secrets in a talk on micro-niche marketing called “Shut Up and Take My Money!” Entrepreneurs take note!", admin: false)
User.create(id: 2, name: 'Dom White', email: 'domwhite@gmail.com', password: 'password', bio: "Dominic has researched extensively for the world-premiere of his talk ‘GitHub and PornHub: A Compare and Contrast Conversation. Aiming to demystify the world of GitHub users as angry, code obsessed loners by comparing them with the angry, porn obsessed loners that use PornHub, Dominic’s talk will brush away such easy stereotypes and shed light on these often-maligned corners of the internet. ", admin: false)
User.create(id: 3, name: 'Mike Goodwin', email: 'mike@gmail.com', password: 'password', bio: "Mike is a man of many digital talents. Currently employed at General Assembly as the procurer of donuts for unforgiving and ungrateful junior developers, Mike often wonders how these people found their way out of their server caves. Mike will be presenting his app Donutfindr for deployment upon graduation of said developers, which allows users to find their own damn donuts whilst simultaneously removing any association Mike has with the users from social media.", admin: false)
User.create(id: 4, name: 'Jeff Wolff', email: 'jeff@gmail.com', password: 'password', bio: "Jeff “The Wolffman” Wolff is an expert at databases and tables. Not necessarily at the same time. ‘Table-flipping: A Database Hate Story’ bring the emoticon to the stage. Jeff will discuss the creation, techniques and destruction of tables, both tangible and intangible. Balsa wood for table construction provided by the good folks of WDI Conf 2015, but if you destroy it, clean it up yo damn self.", admin: false)
User.create(id: 5, name: 'Luke Shillabeer', email: 'luke@gmail.com', password: 'password', bio: "Luke has traversed the digital jungle so you don’t have to. Luke’s talk; ‘From Code Monkey to Code Gorilla. Channelling the Alpha Nerd Within’. Aimed at junior developers who have been picked on for their code, Luke aims to guide you through these tough times with wit and insight. Performance enhancing substances not included.", admin: false)
User.create(id: 6, name: 'Justin Ward', email: 'justin@gmail.com', password: 'password', bio: "Justin is a nice guy who has some great ideas about technology. His talk will entertain and educate. ‘You’re Doing it Wrong’ promises to highlight the ways in which you work you are, in fact, incorrect. He might have more questions for his audience than his audience has for him.", admin: false)
User.create(id: 7, name: 'Nick Pateman', email: 'nick@gmail.com', password: 'password', bio: "Firing the first shots in the war of Front-End versus Back-End fight to the death, Nick’s presentation ‘Like Python and Ruby, Back-end Developers Should Stay in the Ground or in the Jungle. Ideas for Streamlining the Back-End: One Dev at a Time,’ is surely in need of some editing and medication. The talk promises to be controversial and inspire tears of nerd-rage and many rage quitters. ", admin: false)
User.create(id: 8, name: 'Bob Foobar', email: 'Bob@gmail.com', password: 'password', bio: "Bob is the enfant terrible of CSS. He has torn up the rulebook of CSS several times and set fire to at least four of them. Unbound by the arcane laws of Cascading Style Sheets, Bob seeks to guide us on the path to wisdom with his enlightening talk entitled; ‘Floats Should Only Be Used in Moomba Parades. Centering in CSS.", admin: false)
User.create(id: 9, name: 'Jaya Wijono', email: 'jaya@gmail.com', password: 'password', bio: "Despite Jaya’s calm exterior, inside him beats the heart of a revolutionary. In the face of current trends, Jaya is an avowed fan of Internet Explorer, and in his talk “Internet Explorer is the Greatest Browser for Installing Other Browsers”, Jaya takes us through with calm and reasoned arguments why IE is the stepping stone towards browser perfection.", admin: false)
User.create(id: 10, name: 'Beta Ngadiman', email: 'beta@gmail.com', password: 'password', bio: "There are experts in back-end frameworks and then there is Beta Ngadiman. Beta lives, eats and breathes back-end. So much so that he has kindly surfaced from his server cave to share his expertise in a talk entitled “Set the Tables in Order. A Database Love Story.” Recommended for the romantics amongst us", admin: false)
User.create(id: 11, name: 'Phillip Castiglione', email: 'phil@gmail.com', password: 'password', bio: "Philip has quickly become novice to master in terms of coding quicker than you can say Test Driven Development. Philip’s ability to retain data has already had ASIO on the phone, and in his talk; ‘Better Coding Through Sleeping’, Phil shares with us mere mortals the path to coding Nirvana.", admin: false)
User.create(id: 12, name: "Jarod O'Loughlan", email: 'jarod@gmail.com', password: 'password', bio: "AFAIK Jared is the founding member of AAAA (Association Against Acronym Abuse). His presence at Conf 2015 was only secured when we told him we’d drop the WDI component of the conference’s title. Jared’s talk Acronyms in Tech. A Userguide: Talking Sass, CSS, HTML, IDK, WTF will assist those trying to break into tech, but are turned off by the use of Acronyms. Sometimes you have to learn the rules in order to break them. LOL IKR ANAWFOS", admin: false)
User.create(id: 13, name: 'JC Lee', email: 'jc@gmail.com', password: 'password', bio: "JC is a powerhouse within the local tech community. She is here to present a new game currently in development ‘Mildly Irritated Byrds’ and her new app ‘Milohuntr’. Download code for ‘Mildly Irritated Byrds’ free with every tin of Milo purchased", admin: false)
User.create(id: 14, name: 'Louis Moore', email: 'louis@gmail.com', password: 'password', bio: "Louis is an emerging tech expert who is focussed on back-end frameworks. A passionate gamer, Louis is currently driven by the concept of open-source gaming. Louis will be giving a talk about the exciting realms of open-source gaming, showing his own creations and helping novice game developers to dive into the open-source gaming community. His talk entitled “What’s Yours is MineCraft”, is mandatory for gamers and game-makes alike", admin: false)
User.create(id: 15, name: 'Daniel Tsui', email: 'daniel@gmail.com', password: 'password', bio: "Daniel is a legend amongst the local tech community. He is continually supporting meet ups and other developers by turning up to consume the free food on offer. Daniel – or Dt to those in the know – is unveiling his new app ‘GoodFoodMeetUpHunting (GFMUH, pronounced gif-muh) which aims to give directions to every meet-up in the city of Melbourne with a detailed break down of the type and quality of food on offer at each of the Melbourne meet ups. Digitally delicious.", admin: false)
User.create(id: 16, name: 'Matt Swann', email: 'matt@gmail.com', password: 'password', bio: "Matt Swann's meteoric rise from code monkey to Developer in Residence was not without its trials and tribulations. Matt’s hilarious talk; ‘The Problem Exists Between the Computer and the Chair. Stories From the Dev in Residence’, details the shit he has had to put up with during his time as resident developer. Names have been changed to protect the guilty.", admin: false)
User.create(id: 17, name: 'Admin', email: 'admin@admin.com', password: 'admin', admin: true)

Attendee.create(user_id: 1, event_id: 1, user_role: 'speaker')
Attendee.create(user_id: 2, event_id: 1, user_role: 'user')
Attendee.create(user_id: 3, event_id: 1, user_role: 'user')
Attendee.create(user_id: 4, event_id: 1, user_role: 'user')
Attendee.create(user_id: 5, event_id: 1, user_role: 'user')
Attendee.create(user_id: 6, event_id: 1, user_role: 'user')
Attendee.create(user_id: 7, event_id: 1, user_role: 'user')
Attendee.create(user_id: 8, event_id: 1, user_role: 'user')
Attendee.create(user_id: 9, event_id: 1, user_role: 'user')
Attendee.create(user_id: 10, event_id: 1, user_role: 'user')
Attendee.create(user_id: 11, event_id: 1, user_role: 'user')
Attendee.create(user_id: 12, event_id: 1, user_role: 'user')
Attendee.create(user_id: 13, event_id: 1, user_role: 'user')
Attendee.create(user_id: 14, event_id: 1, user_role: 'user')
Attendee.create(user_id: 15, event_id: 1, user_role: 'user')
Attendee.create(user_id: 16, event_id: 1, user_role: 'user')
Attendee.create(user_id: 1, event_id: 2, user_role: 'user')
Attendee.create(user_id: 2, event_id: 2, user_role: 'speaker')
Attendee.create(user_id: 3, event_id: 2, user_role: 'user')
Attendee.create(user_id: 4, event_id: 2, user_role: 'user')
Attendee.create(user_id: 5, event_id: 2, user_role: 'user')
Attendee.create(user_id: 6, event_id: 2, user_role: 'user')
Attendee.create(user_id: 7, event_id: 2, user_role: 'user')
Attendee.create(user_id: 8, event_id: 2, user_role: 'user')
Attendee.create(user_id: 9, event_id: 2, user_role: 'user')
Attendee.create(user_id: 10, event_id: 2, user_role: 'user')
Attendee.create(user_id: 11, event_id: 2, user_role: 'user')
Attendee.create(user_id: 12, event_id: 2, user_role: 'user')
Attendee.create(user_id: 13, event_id: 2, user_role: 'user')
Attendee.create(user_id: 14, event_id: 2, user_role: 'user')
Attendee.create(user_id: 15, event_id: 2, user_role: 'user')
Attendee.create(user_id: 16, event_id: 2, user_role: 'user')
Attendee.create(user_id: 1, event_id: 3, user_role: 'user')
Attendee.create(user_id: 2, event_id: 3, user_role: 'user')
Attendee.create(user_id: 3, event_id: 3, user_role: 'speaker')
Attendee.create(user_id: 4, event_id: 3, user_role: 'user')
Attendee.create(user_id: 5, event_id: 3, user_role: 'user')
Attendee.create(user_id: 6, event_id: 3, user_role: 'user')
Attendee.create(user_id: 7, event_id: 3, user_role: 'user')
Attendee.create(user_id: 8, event_id: 3, user_role: 'user')
Attendee.create(user_id: 9, event_id: 3, user_role: 'user')
Attendee.create(user_id: 10, event_id: 3, user_role: 'user')
Attendee.create(user_id: 11, event_id: 3, user_role: 'user')
Attendee.create(user_id: 12, event_id: 3, user_role: 'user')
Attendee.create(user_id: 13, event_id: 3, user_role: 'user')
Attendee.create(user_id: 14, event_id: 3, user_role: 'user')
Attendee.create(user_id: 15, event_id: 3, user_role: 'user')
Attendee.create(user_id: 16, event_id: 3, user_role: 'user')
Attendee.create(user_id: 1, event_id: 4, user_role: 'user')
Attendee.create(user_id: 2, event_id: 4, user_role: 'user')
Attendee.create(user_id: 3, event_id: 4, user_role: 'user')
Attendee.create(user_id: 4, event_id: 4, user_role: 'speaker')
Attendee.create(user_id: 5, event_id: 4, user_role: 'user')
Attendee.create(user_id: 6, event_id: 4, user_role: 'user')
Attendee.create(user_id: 7, event_id: 4, user_role: 'user')
Attendee.create(user_id: 8, event_id: 4, user_role: 'user')
Attendee.create(user_id: 9, event_id: 4, user_role: 'user')
Attendee.create(user_id: 10, event_id: 4, user_role: 'user')
Attendee.create(user_id: 11, event_id: 4, user_role: 'user')
Attendee.create(user_id: 12, event_id: 4, user_role: 'user')
Attendee.create(user_id: 13, event_id: 4, user_role: 'user')
Attendee.create(user_id: 14, event_id: 4, user_role: 'user')
Attendee.create(user_id: 15, event_id: 4, user_role: 'user')
Attendee.create(user_id: 16, event_id: 4, user_role: 'user')
Attendee.create(user_id: 1, event_id: 5, user_role: 'user')
Attendee.create(user_id: 2, event_id: 5, user_role: 'user')
Attendee.create(user_id: 3, event_id: 5, user_role: 'user')
Attendee.create(user_id: 4, event_id: 5, user_role: 'user')
Attendee.create(user_id: 5, event_id: 5, user_role: 'speaker')
Attendee.create(user_id: 6, event_id: 5, user_role: 'user')
Attendee.create(user_id: 7, event_id: 5, user_role: 'user')
Attendee.create(user_id: 8, event_id: 5, user_role: 'user')
Attendee.create(user_id: 9, event_id: 5, user_role: 'user')
Attendee.create(user_id: 10, event_id: 5, user_role: 'user')
Attendee.create(user_id: 11, event_id: 5, user_role: 'user')
Attendee.create(user_id: 12, event_id: 5, user_role: 'user')
Attendee.create(user_id: 13, event_id: 5, user_role: 'user')
Attendee.create(user_id: 14, event_id: 5, user_role: 'user')
Attendee.create(user_id: 15, event_id: 5, user_role: 'user')
Attendee.create(user_id: 16, event_id: 5, user_role: 'user')
Attendee.create(user_id: 1, event_id: 6, user_role: 'user')
Attendee.create(user_id: 2, event_id: 6, user_role: 'user')
Attendee.create(user_id: 3, event_id: 6, user_role: 'user')
Attendee.create(user_id: 4, event_id: 6, user_role: 'user')
Attendee.create(user_id: 5, event_id: 6, user_role: 'user')
Attendee.create(user_id: 6, event_id: 6, user_role: 'speaker')
Attendee.create(user_id: 7, event_id: 6, user_role: 'user')
Attendee.create(user_id: 8, event_id: 6, user_role: 'user')
Attendee.create(user_id: 9, event_id: 6, user_role: 'user')
Attendee.create(user_id: 10, event_id: 6, user_role: 'user')
Attendee.create(user_id: 11, event_id: 6, user_role: 'user')
Attendee.create(user_id: 12, event_id: 6, user_role: 'user')
Attendee.create(user_id: 13, event_id: 6, user_role: 'user')
Attendee.create(user_id: 14, event_id: 6, user_role: 'user')
Attendee.create(user_id: 15, event_id: 6, user_role: 'user')
Attendee.create(user_id: 16, event_id: 6, user_role: 'user')
Attendee.create(user_id: 1, event_id: 7, user_role: 'user')
Attendee.create(user_id: 2, event_id: 7, user_role: 'user')
Attendee.create(user_id: 3, event_id: 7, user_role: 'user')
Attendee.create(user_id: 4, event_id: 7, user_role: 'user')
Attendee.create(user_id: 5, event_id: 7, user_role: 'user')
Attendee.create(user_id: 6, event_id: 7, user_role: 'user')
Attendee.create(user_id: 7, event_id: 7, user_role: 'speaker')
Attendee.create(user_id: 8, event_id: 7, user_role: 'user')
Attendee.create(user_id: 9, event_id: 7, user_role: 'user')
Attendee.create(user_id: 10, event_id: 7, user_role: 'user')
Attendee.create(user_id: 11, event_id: 7, user_role: 'user')
Attendee.create(user_id: 12, event_id: 7, user_role: 'user')
Attendee.create(user_id: 13, event_id: 7, user_role: 'user')
Attendee.create(user_id: 14, event_id: 7, user_role: 'user')
Attendee.create(user_id: 15, event_id: 7, user_role: 'user')
Attendee.create(user_id: 16, event_id: 7, user_role: 'user')
Attendee.create(user_id: 1, event_id: 8, user_role: 'user')
Attendee.create(user_id: 2, event_id: 8, user_role: 'user')
Attendee.create(user_id: 3, event_id: 8, user_role: 'user')
Attendee.create(user_id: 4, event_id: 8, user_role: 'user')
Attendee.create(user_id: 5, event_id: 8, user_role: 'user')
Attendee.create(user_id: 6, event_id: 8, user_role: 'user')
Attendee.create(user_id: 7, event_id: 8, user_role: 'user')
Attendee.create(user_id: 8, event_id: 8, user_role: 'speaker')
Attendee.create(user_id: 9, event_id: 8, user_role: 'user')
Attendee.create(user_id: 10, event_id: 8, user_role: 'user')
Attendee.create(user_id: 11, event_id: 8, user_role: 'user')
Attendee.create(user_id: 12, event_id: 8, user_role: 'user')
Attendee.create(user_id: 13, event_id: 8, user_role: 'user')
Attendee.create(user_id: 14, event_id: 8, user_role: 'user')
Attendee.create(user_id: 15, event_id: 8, user_role: 'user')
Attendee.create(user_id: 16, event_id: 8, user_role: 'user')
Attendee.create(user_id: 1, event_id: 9, user_role: 'user')
Attendee.create(user_id: 2, event_id: 9, user_role: 'user')
Attendee.create(user_id: 3, event_id: 9, user_role: 'user')
Attendee.create(user_id: 4, event_id: 9, user_role: 'user')
Attendee.create(user_id: 5, event_id: 9, user_role: 'user')
Attendee.create(user_id: 6, event_id: 9, user_role: 'user')
Attendee.create(user_id: 7, event_id: 9, user_role: 'user')
Attendee.create(user_id: 8, event_id: 9, user_role: 'user')
Attendee.create(user_id: 9, event_id: 9, user_role: 'speaker')
Attendee.create(user_id: 10, event_id: 9, user_role: 'user')
Attendee.create(user_id: 11, event_id: 9, user_role: 'user')
Attendee.create(user_id: 12, event_id: 9, user_role: 'user')
Attendee.create(user_id: 13, event_id: 9, user_role: 'user')
Attendee.create(user_id: 14, event_id: 9, user_role: 'user')
Attendee.create(user_id: 15, event_id: 9, user_role: 'user')
Attendee.create(user_id: 16, event_id: 9, user_role: 'user')
Attendee.create(user_id: 1, event_id: 10, user_role: 'user')
Attendee.create(user_id: 2, event_id: 10, user_role: 'user')
Attendee.create(user_id: 3, event_id: 10, user_role: 'user')
Attendee.create(user_id: 4, event_id: 10, user_role: 'user')
Attendee.create(user_id: 5, event_id: 10, user_role: 'user')
Attendee.create(user_id: 6, event_id: 10, user_role: 'user')
Attendee.create(user_id: 7, event_id: 10, user_role: 'user')
Attendee.create(user_id: 8, event_id: 10, user_role: 'user')
Attendee.create(user_id: 9, event_id: 10, user_role: 'user')
Attendee.create(user_id: 10, event_id: 10, user_role: 'speaker')
Attendee.create(user_id: 11, event_id: 10, user_role: 'user')
Attendee.create(user_id: 12, event_id: 10, user_role: 'user')
Attendee.create(user_id: 13, event_id: 10, user_role: 'user')
Attendee.create(user_id: 14, event_id: 10, user_role: 'user')
Attendee.create(user_id: 15, event_id: 10, user_role: 'user')
Attendee.create(user_id: 16, event_id: 10, user_role: 'user')
Attendee.create(user_id: 1, event_id: 11, user_role: 'user')
Attendee.create(user_id: 2, event_id: 11, user_role: 'user')
Attendee.create(user_id: 3, event_id: 11, user_role: 'user')
Attendee.create(user_id: 4, event_id: 11, user_role: 'user')
Attendee.create(user_id: 5, event_id: 11, user_role: 'user')
Attendee.create(user_id: 6, event_id: 11, user_role: 'user')
Attendee.create(user_id: 7, event_id: 11, user_role: 'user')
Attendee.create(user_id: 8, event_id: 11, user_role: 'user')
Attendee.create(user_id: 9, event_id: 11, user_role: 'user')
Attendee.create(user_id: 10, event_id: 11, user_role: 'user')
Attendee.create(user_id: 11, event_id: 11, user_role: 'speaker')
Attendee.create(user_id: 12, event_id: 11, user_role: 'user')
Attendee.create(user_id: 13, event_id: 11, user_role: 'user')
Attendee.create(user_id: 14, event_id: 11, user_role: 'user')
Attendee.create(user_id: 15, event_id: 11, user_role: 'user')
Attendee.create(user_id: 16, event_id: 11, user_role: 'user')
Attendee.create(user_id: 1, event_id: 12, user_role: 'user')
Attendee.create(user_id: 2, event_id: 12, user_role: 'user')
Attendee.create(user_id: 3, event_id: 12, user_role: 'user')
Attendee.create(user_id: 4, event_id: 12, user_role: 'user')
Attendee.create(user_id: 5, event_id: 12, user_role: 'user')
Attendee.create(user_id: 6, event_id: 12, user_role: 'user')
Attendee.create(user_id: 7, event_id: 12, user_role: 'user')
Attendee.create(user_id: 8, event_id: 12, user_role: 'user')
Attendee.create(user_id: 9, event_id: 12, user_role: 'user')
Attendee.create(user_id: 10, event_id: 12, user_role: 'user')
Attendee.create(user_id: 11, event_id: 12, user_role: 'user')
Attendee.create(user_id: 12, event_id: 12, user_role: 'speaker')
Attendee.create(user_id: 13, event_id: 12, user_role: 'user')
Attendee.create(user_id: 14, event_id: 12, user_role: 'user')
Attendee.create(user_id: 15, event_id: 12, user_role: 'user')
Attendee.create(user_id: 16, event_id: 12, user_role: 'user')
Attendee.create(user_id: 1, event_id: 13, user_role: 'user')
Attendee.create(user_id: 2, event_id: 13, user_role: 'user')
Attendee.create(user_id: 3, event_id: 13, user_role: 'user')
Attendee.create(user_id: 4, event_id: 13, user_role: 'user')
Attendee.create(user_id: 5, event_id: 13, user_role: 'user')
Attendee.create(user_id: 6, event_id: 13, user_role: 'user')
Attendee.create(user_id: 7, event_id: 13, user_role: 'user')
Attendee.create(user_id: 8, event_id: 13, user_role: 'user')
Attendee.create(user_id: 9, event_id: 13, user_role: 'user')
Attendee.create(user_id: 10, event_id: 13, user_role: 'user')
Attendee.create(user_id: 11, event_id: 13, user_role: 'user')
Attendee.create(user_id: 12, event_id: 13, user_role: 'user')
Attendee.create(user_id: 13, event_id: 13, user_role: 'speaker')
Attendee.create(user_id: 14, event_id: 13, user_role: 'user')
Attendee.create(user_id: 15, event_id: 13, user_role: 'user')
Attendee.create(user_id: 16, event_id: 13, user_role: 'user')
Attendee.create(user_id: 1, event_id: 14, user_role: 'user')
Attendee.create(user_id: 2, event_id: 14, user_role: 'user')
Attendee.create(user_id: 3, event_id: 14, user_role: 'user')
Attendee.create(user_id: 4, event_id: 14, user_role: 'user')
Attendee.create(user_id: 5, event_id: 14, user_role: 'user')
Attendee.create(user_id: 6, event_id: 14, user_role: 'user')
Attendee.create(user_id: 7, event_id: 14, user_role: 'user')
Attendee.create(user_id: 8, event_id: 14, user_role: 'user')
Attendee.create(user_id: 9, event_id: 14, user_role: 'user')
Attendee.create(user_id: 10, event_id: 14, user_role: 'user')
Attendee.create(user_id: 11, event_id: 14, user_role: 'user')
Attendee.create(user_id: 12, event_id: 14, user_role: 'user')
Attendee.create(user_id: 13, event_id: 14, user_role: 'user')
Attendee.create(user_id: 14, event_id: 14, user_role: 'speaker')
Attendee.create(user_id: 15, event_id: 14, user_role: 'user')
Attendee.create(user_id: 16, event_id: 14, user_role: 'user')
Attendee.create(user_id: 1, event_id: 15, user_role: 'user')
Attendee.create(user_id: 2, event_id: 15, user_role: 'user')
Attendee.create(user_id: 3, event_id: 15, user_role: 'user')
Attendee.create(user_id: 4, event_id: 15, user_role: 'user')
Attendee.create(user_id: 5, event_id: 15, user_role: 'user')
Attendee.create(user_id: 6, event_id: 15, user_role: 'user')
Attendee.create(user_id: 7, event_id: 15, user_role: 'user')
Attendee.create(user_id: 8, event_id: 15, user_role: 'user')
Attendee.create(user_id: 9, event_id: 15, user_role: 'user')
Attendee.create(user_id: 10, event_id: 15, user_role: 'user')
Attendee.create(user_id: 11, event_id: 15, user_role: 'user')
Attendee.create(user_id: 12, event_id: 15, user_role: 'user')
Attendee.create(user_id: 13, event_id: 15, user_role: 'user')
Attendee.create(user_id: 14, event_id: 15, user_role: 'user')
Attendee.create(user_id: 15, event_id: 15, user_role: 'speaker')
Attendee.create(user_id: 16, event_id: 15, user_role: 'user')
Attendee.create(user_id: 1, event_id: 16, user_role: 'user')
Attendee.create(user_id: 2, event_id: 16, user_role: 'user')
Attendee.create(user_id: 3, event_id: 16, user_role: 'user')
Attendee.create(user_id: 4, event_id: 16, user_role: 'user')
Attendee.create(user_id: 5, event_id: 16, user_role: 'user')
Attendee.create(user_id: 6, event_id: 16, user_role: 'user')
Attendee.create(user_id: 7, event_id: 16, user_role: 'user')
Attendee.create(user_id: 8, event_id: 16, user_role: 'user')
Attendee.create(user_id: 9, event_id: 16, user_role: 'user')
Attendee.create(user_id: 10, event_id: 16, user_role: 'user')
Attendee.create(user_id: 11, event_id: 16, user_role: 'user')
Attendee.create(user_id: 12, event_id: 16, user_role: 'user')
Attendee.create(user_id: 13, event_id: 16, user_role: 'user')
Attendee.create(user_id: 14, event_id: 16, user_role: 'user')
Attendee.create(user_id: 15, event_id: 16, user_role: 'user')
Attendee.create(user_id: 16, event_id: 16, user_role: 'speaker')

uploader = PhotoUploader.new
# photo_file_name = %w{Bob, beta, dom, dt, jarod, jaya, jc, jeff, justin, louis, luke, matt, matts, mike, nick, phil}
# Seeds photos from file structure to something Carrierwave should be able to use
names = {'matt' => 'Matt Cameron', 'dom' => 'Dom White', 'mike' => 'Mike Goodwin', 'jeff' => 'Jeff Wolff', 'luke' => 'Luke Shillabeer', 'justin' => 'Justin Ward', 'nick' => 'Nick Pateman', 'Bob' => 'Bob Foobar', 'jaya' => 'Jaya Wijono', 'beta' => 'Beta Ngadiman', 'phil' => 'Phillip Castiglione', 'jarod' => "Jarod O'loughlan", 'jc' => 'JC Lee', 'louis' => 'Louis Moore', 'dt' => 'Daniel Tsui', 'Matt' => 'Matt Swann' }
names.each do |photo_name, full_name|
  user = User.find_by(name: full_name)
  file_name = "./db/photos/" + photo_name + ".jpg"
  the_file = File.open file_name
  unless user == nil # one of the key value pairs must not be returning the correct record because one is nil.
    user.photo = the_file
  end
  #uploader.store!(the_file) # todo currently breaks so commented out
end




