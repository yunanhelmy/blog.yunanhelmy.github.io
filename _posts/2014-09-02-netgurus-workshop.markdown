---
layout: post
title: "Netguru's Workshop"
date: 2014-09-02 09:30:12 +0700
comments: true
categories: ['ruby', 'rails']
tags: ['ruby', 'rails', 'netguru']
thumbnail: 
---
A few weeks ago i participated on test to enter <a href="https://netguru.co/" target="_blank">Netguru's</a> August Free Workshop. I got this information from newsletter of Netguru. Then i decide to do the test given. The test is simple. Issue given and we have to fix alll of them. Actually i'm enrolled to this workshop. But unfortunatelly i couldn't join the workshop because its in Polandia. Its impossible to me to get there as i'm in Indonesia. Even if i have passport i will need visa and to process that i need more time than just one week. I emailed one of Netguru's staff and ask whether i could join workshop via video conference or not. Again, unfortunately that they will not be able to stream their workshop.

But that's okay. Even i couldn't join the workshop i'm still glad that i have done the test. I think this is as my personal achievement. I really like to learn something new.

Lets forget about workshop. I will share the test from Netguru. Basically if you're familiar with rails you won't get difficult as they just want to know your basic knowledge. The only thing i can't solve is gem <a href="https://github.com/hashrocket/decent_exposure" target="_blank">decent_exposure</a>. I found its hard to me to understand this gem. I am motivated to master this gem. Probably on my next post i will write about gem decent_exposure.

You can check my source code <a href="https://github.com/yunanhelmy/workshops" target="_blank">here</a>

Here re some issue to solve in test :

1. Missing field on `User` model
	* Run `rspec spec/models/product_spec.rb` you'll see error. Just add those missing fields and add validation for them.
	* Migrate your changes using `rake db:migrate` 
2. Devise setting
	* Fix devise configuration. Add routes. Next time you'll need to create custom controllers and views for customization
3. Fix `CategoriesController`
	* Run `rspec spec/controllers/categories_controller_spec.rb` you'll see error. Add method for checking permission in `application_controller.rb`
	* Add your method in `CategoriesController` for callback
4. Fix `Product` model
	* Run `rspec spec/models/product_spec.rb`. Add missing validation to `Product` model.
5. Fix `Category` model
	* Run `rspec spec/models/category_spec.rb`. Add missing validation to `Product` model.
6. Fix `ProductController`
	* I tried to add validation there using callback. But rspec still give me error. I think the correct solution is to use decent exposure. This is my <a href="https://github.com/yunanhelmy/workshops/commit/0d658ef96ba1dfc31bc44b9f09a32cbf8a963a82" target="_blank">commit</a> and <a href="https://github.com/yunanhelmy/workshops/commit/f3ceb2d8b65d01016cbfe1345234148c6f65dd97" target="_blank">other commit</a>
7. Fix `ReviewDecorator`
	* Add method author
8. Check all code in browser
	* Actually just check all your code in browser :)
9. add style
	* Add style. You can manually write your own CSS or using bootstrap or even foundation
10. host on <a href="http://heroku.com/" target="_blank">heroku</a>
	* And finally deploy your work to heroku. Probably i'll write some articles about heroku and how to deploy.

And here is <a href="http://floating-shelf-2449.herokuapp.com/
" target="_blank">my link on heroku</a>.

Although i couldn't join the workshop i'm happy that i can solve the issue. Maybe someday i can join Netguru's Workshop or even join as Netguru's Folk (<strong>i hope so</strong> !)
