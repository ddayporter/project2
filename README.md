# GameTrackr
WDI - Project 2 - full-stack web application

This is a companion app for board games that allows a user to track games and their stats (players, winners, other game details and notes). Currently exclusively enabled for Burgle Bros.

## Technologies Used
This app is built with Ruby on Rails, using some Sass and Bootstrap.

## Approach
I set out to create an app for tracking any type of board game you want, with customizable fields for adding details about each one. But for the scope of this project, I narrowed it down to just tracking one type of game, Burgle Bros., and became a sort of companion app.

Once I was settled on the type of game, I drew up some ERDs and wireframes to plan out my app. With a bit of trial and error, I settled on the current models, with the hope of adding new models to enhance the user experience.

## Installation instructions
Fork and clone this repo, then install gems and create/migrate/seed database.

```
git clone https://github.com/ddayporter/project2.git
bundle install

rake db:create
rake db:migrate
rake db:seed
```

## Future Features
The very next feature I would like to add is the game notes section - thought it would be in the first iteration and it didn't make the cut.

Next, I would like to add models for each of the card types - loot, tools and events - with a join table set up much the same as the Mission model currently is for Character and Play relationships, although I wouldn't list all the cards on the page the same way. I would also flesh out the Character MVC a bit to enable you to click through to learn more about each character, see links to games they've played, many how many times they've been in a winning game.

Also would like to use ajax to enable adding/removing characters to the game without a page refresh.

Further down the line, I would like to enable new game types as well as Facebook login and other social media integration.

## Unsolved Problems
I would like to add a "Next" button so you can click to the next game played without having to go back to the list. Here's some code I started working on but didn't quite get it working:
```
  <div class="gameplay-next">
    <%# if @play_counter <= @plays.count %>
      <%#= link_to "Next", game_play_path(@game, @play_counter) %>
    <% else %>
      <%#= link_to "Next", game_play_path(@game, @plays.first) %>
    <%# end %>
  </div>
```
