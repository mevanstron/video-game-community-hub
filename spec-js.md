# Specifications for the Rails with jQuery Assessment

Specs:
- [x] Use jQuery for implementing new requirements
- [x] Include a show resource rendered using jQuery and an Active Model Serialization JSON backend.
  *video games controller contains json rendering for the show action. video_game.js contains addVideoGame() function to add json content to show page.*
- [x] Include an index resource rendered using jQuery and an Active Model Serialization JSON backend.
  *video games controller contains json rendering for the index action. video_game.js contains addVideoGames() function to add json content to the index page.*
- [x] Include at least one has_many relationship in information rendered via JSON and appended to the DOM.
  *video game has many tags. video game show page loads tags through js.*
- [x] Use your Rails API and a form to create a resource and render the response without a page refresh.
  *tags index has a Add Tag form that creates a new tag through an API call and displays the new tag at the bottom of the index table.*
- [x] Translate JSON responses into js model objects.
  *VideoGame object is defined in video_games.js*
- [x] At least one of the js model objects must have at least one method added by your code to the prototype.
  *renderTR() is a function defined on the VideoGame Prototype.*

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
