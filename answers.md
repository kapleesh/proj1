# Q0: Why is this error being thrown? 
We don't have a model for pokemon yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? 
There is a random generation of pokemon IDs. None of the pokemon have trainers.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
This creates a button on our html page. It maps to a specific patch route (capture). capture_path(id: @pokemon) serves to specify the path that the button routes to - aka capture and the specific pokemon ID. 

# Question 3: What would you name your own Pokemon? 
Chubbasaur

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in trainers/ + current_trainer.id.to_s. We don't need to have a path there because path itself just refers to a specific route.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
Basically each pokemon object has error messages and the line allows us to display those messages.

# Give us feedback on the project and decal below!
I wish there were more office hours, but overall I feel like what I am learning is useful. 

# Extra credit: Link your Heroku deployed app
https://serene-wildwood-23998.herokuapp.com/ 
^not sure if this works... 
