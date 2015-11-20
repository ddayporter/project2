# GameTrackr
WDI - Project 2 - full-stack web application

This web app will be a boardgame tracker that allows a user to track games and
their stats (players, winners, other game details and notes).



# Future Features

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
