# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes)
    *A video game has many reviews*
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
    *A review belongs to a user*
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
    *Users have many Video Games, and Video Games have many users; through UserVideoGames.*
- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
    *A User has many reviewed_games, through reviews.  A user submits a rating and content on a review.*
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    *models are required to have a present name and title, that are usually unique. Users must have password and email. Other examples can be seen on the models.*
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [ ] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)
- [x] Include signup (how e.g. Devise)
    *custom users controller, routes, and views.*
- [x] Include login (how e.g. Devise)
    *custom sessions controller, routes, and views.*
- [x] Include logout (how e.g. Devise)
    *custom sessions controller, routes, and views.*
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
