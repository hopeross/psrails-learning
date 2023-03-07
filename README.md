# README

Just like with the Ruby course, I'm going to document my trials and travails of getting through the Rails course.
So far, it's half voodoo and half wtf do you mean there's no gem installed or ruby version differences.

Started: 27 February 2023

Current: 7 March 2023

* Lesson 1 - Introduction
* Lesson 2 - Create App
  * This seems fairly straight forward
* Lesson 3 - Views and Controllers
  * Fought a little with webpacker on this one and just generalized differences between my environment and the cleaner 
  * environment the instructor has
* Lesson 4 - Models
  * Yep.  Rails = Voodoo.  But, the migrations works fairly similarly to Entity Framework so it wasn't completely 
  * unfamiliar
* Lesson 5 - Connecting MVC
  * Well that was weirdly easy.  This may actually be making sense.  Model lays out the structure of the data and 
  * interfacing with the database.  View displays said dada.  Controller shovels info about between the various parties 
  * and handsd it to the router which serves it up to the end user.
* Lesson 6 - Migrations
  * Also not terribly difficult though my generate didn't automagically add the new column names, I wound up building 
  * that by hand
* Lesson 7 - View Helpers
  * Weirdly making sense and very adament about separation of concerns.  Putting business logic not on the view itself, 
  * and not using a ton of ruby in the view as well.
* Lesson 8 - Layouts
  * Short and to the point
* Lesson 9 - Stylesheets and Assets
  * Seriously if it's this magic-easy to get things going I see why it has its following.  
* Lesson 10 - Show Page
  * Using the built in parameter grabbing abilities of Ruby made the routing easy, you literally just pass in :id.  
* Lesson 11 - Linking Pages
  * aka: routing.  Like everything else this has been easy in the context of the simple learning app.  Basically when 
  * the routes were created in the routes file it voo-doo created path helpers that you can then feed to the link_to 
  * helper and boom there's the nav bar done, plus the ability to go to individual detail pages
* Lesson 12 - Editing Records
  * Forms were a little more complicated in that there were a lot more methods to go through to find the right one(s) to
  * use.  Ruby voo-doo is still in play though once you figure out the right method to use it magics up the binding up
  * the data to the page.
* Lesson 12 part 2 - Editing Records
  * Part 2 took a little longer but in the middle of it we had a routing conversation around Trusted Admin while sorting
  * out an operations issue which helped cement things a bit more.
* Lesson 13 - Creating Records
  * talked myself in circles on this one, apparently you need both the new method (to initate the new action) AND the 
  * create method to save the new item.  I was trying to smash those two concepts together in to one.  They are 
  * individual and if you use them correctly Rails will handle things through voodoo lol.
* Lesson 14 - Partials
  * Partials wasn't hard, basically the hard part was getting the syntax right
* Lesson 15 - Destroy
  * Other than arguing with myself back and forth about the words Delete/Destroy this was scarily easy.
* 
