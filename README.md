# README

Just like with the Ruby course, I'm going to document my trials and travails of getting through the Rails course.
So far, it's half voodoo and half wtf do you mean there's no gem installed or ruby version differences.

Started: 27 February 2023

Current: 12 April 2023

* Lesson 1 - Introduction
* Lesson 2 - Create App
    * This seems fairly straight forward
* Lesson 3 - Views and Controllers
    * Fought a little with webpacker on this one and just generalized differences between my environment and the cleaner
      environment the instructor has
* Lesson 4 - Models
    * Yep. Rails = Voodoo. But, the migrations works fairly similarly to Entity Framework so it wasn't completely
      unfamiliar
* Lesson 5 - Connecting MVC
    * Well that was weirdly easy. This may actually be making sense. Model lays out the structure of the data and
      interfacing with the database. View displays said dada. Controller shovels info about between the various parties
      and handsd it to the router which serves it up to the end user.
* Lesson 6 - Migrations
    * Also not terribly difficult though my generate didn't automagically add the new column names, I wound up building
      that by hand
* Lesson 7 - View Helpers
    * Weirdly making sense and very adament about separation of concerns. Putting business logic not on the view itself,
      and not using a ton of ruby in the view as well.
* Lesson 8 - Layouts
    * Short and to the point
* Lesson 9 - Stylesheets and Assets
    * Seriously if it's this magic-easy to get things going I see why it has its following.
* Lesson 10 - Show Page
    * Using the built in parameter grabbing abilities of Ruby made the routing easy, you literally just pass in :id.
* Lesson 11 - Linking Pages
    * aka: routing. Like everything else this has been easy in the context of the simple learning app. Basically when
      the routes were created in the routes file it voo-doo created path helpers that you can then feed to the link_to
      helper and boom there's the nav bar done, plus the ability to go to individual detail pages
* Lesson 12 - Editing Records
    * Forms were a little more complicated in that there were a lot more methods to go through to find the right one(s)
      to use. Ruby voo-doo is still in play though once you figure out the right method to use it magics up the binding
      up the data to the page.
* Lesson 12 part 2 - Editing Records
    * Part 2 took a little longer but in the middle of it we had a routing conversation around Trusted Admin while
      sorting out an operations issue which helped cement things a bit more.
* Lesson 13 - Creating Records
    * talked myself in circles on this one, apparently you need both the new method (to initate the new action) AND the
      create method to save the new item. I was trying to smash those two concepts together in to one. They are
      individual and if you use them correctly Rails will handle things through voodoo lol.
* Lesson 14 - Partials
    * Partials wasn't hard, basically the hard part was getting the syntax right
* Lesson 15 - Destroy
    * Other than arguing with myself back and forth about the words Delete/Destroy this was scarily easy.
* Lesson 16 - Custom Queries
    * SQL got rails voo-doo'd, got it. But now I have a lot of ideas I want to do but realized I need to go off the
      rails paved path of routing and custom routes isn't covered till lesson 39 lol
* Lesson 17 - Migrations, again
    * Other than a bizarre data fight this went fairly smoothly
* Lesson 18 - Model Validations
    * Other than the ruby version of regex going on this was pretty straight forward.
* Lesson 19 - Handling Validation Errors
    * This is currently not working and I'm not sure why. I will come back to it. My code is solid as the lesson
      presented, plus my searching through stack overflow/reddit posts. Right now the model validations work fine. If
      you go into ruby console and do m = Movie.new and then m.save you get all the error messages. But something on the
      form/front end side is just completely ignoring/eating the error messages and I do not know why at this time.
      According to one of my friends I just need to rage-google some more lolol
* Lesson 20 - "The Flash"
    * Seriously? LOL. This was straight forward and made sense and worked. I left the custom notice in place rather than
      reverting it, call it note taking.
* Lesson 21 - one-to-many: belongs_to
    * of course there's a helper to create migration, model, view, cnotroller, etc all at once
* Lesson 22 - one-to-many: has-many
    * the other side of the relationship coin. an event could have many registrations, a movie could have many reviews,
      a post could have many comments
* Lesson 23 - one-to-many: nested resources
    * This is where the rubber met the road it seems. How to show child resources within the assoication of their parent
      resource - ie: comments for the parent movie
* Lesson 24 - one-to-many: forms
    * Dug in deep on this lesson and learned a bunch and somehow magically fixed my issues from lesson 19 and validation
      now works. I'm still not quite sure what I did to fix it but I'm sure it's something simple that I was missing and
      put in when working on the new form
* Lesson 25 - one-to-many: logic
    * A little more complex but ruby will (generally) tell you what's going on if you "listen"
* Lesson 26 - User account model
    * works pretty much like any other parent level entity in ruby, with the addition of the encryption and a little bit
      of ruby magic around passwords
* Lesson 27 - User Signup
    * oooh custom routes is a happy!  And easy. I wonder how much overhead there is in a ruby program vs say a Kotlin &
      React program given all the Ruby magic provided
* Lesson 28 - Edit (and delete) User Account
    * Ruby's verb to delete an account is rather aggressive.  "Destroy". I guess that's a good way to remember it is
      permanent. Spelling counts, a lot. But this was good information.
* Lesson 29 - Sign In
    * Sessions are a little weird, took me a tick to wrap my brain around it. Everything around a session is handled
      just a smidge different due to there not being a model
* Lesson 30 - Authentication
    * Alright, some meat on this one. But I got it to the point of signing in with email or username. And it's pretty
      cool how there's an instance method to deal with the encryption password validation nightmare
* Lesson 31 - Current User
    * Is it weird that I'm finding this to be fun?
* Lesson 32 - Sign Out
    * That was remarkably easy. Figured it was a delete the session cookie dance or something. Nope. Set session user id
      to nil. Ruby magic ensues.
* Lesson 33 - Authorization (both parts)
    * before doing action ensure user is signed in; before doing action ensure user is authorized to do action. Fairly
      straightforward. I'm still waiting for the other shoe to drop but admin users is next so maybe that'll add the
      other shoe I keep expecting to happen lol
* Lesson 34 - Admin Users
    * My biggest fight was with robocop who wanted me to change the syntax of one of the helper methods. Which is fine,
      I know the PS lessons may be a little dated, but it caused me to loop through what the crap am I doing wrong
      moments.
* Lesson 35 - Many to Many associations
    * Feelin a bit matrix-y at this point but I got it working. review.user, review.movie, back and forth.
* Lesson 36 - Another many to many
    * This one feels a bit weird at this point but it's a two ... three? parter. Maybe it'll make more sense the further
      I go
* Lesson 37 - Through Associations
    * far more efficient, query wise, by using this. A little tricky to fully comprehend but if one takes a step back
      and thinks it through it works.
* Lesson 38 - Many to Many with checkboxes
    * Well that was actually kinda fun. Join tables are fairly useful tools to make connections between two different
      models
* Lesson 39 - Custom Scopes and Routes
    * Like a lot of things in ruby and rails this seems rather scary and complicated till you realize there's a lot of
      behind the scenes voodoo that makes magic happen. Also naming things is hard.
* Lesson 40 - Friendly URLs
    * I did get through the lesson and I swear it made sense a week ago when I did it but a week later when I picked up
      the bonus round I couldn't get the bonus round to work So. Saving the code for now and going to come back to it
      later when my brain reengages.
* Lesson 41 - Deployment
    * This seems fairly straightforward but I'm going to punt on the exercise to my home computer. I really don't want
      to mix Heroku with my work github and would rather mix it with personal github so I can use it for future private
      projects as well.
* Lesson 42 - Active Storage File Uploads
    * Part 1 was the rails half and like everything else it's magically (suspiciously) easy. Got this part to work,
      moving on to the second half.
    * Part 2 was slightly tricky but came together nicely at the end. Spelling matters, just saying.