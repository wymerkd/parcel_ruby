<h3>Packages</h3>

<% if @parcels.any? %>
  <ul>
    <% @parcels.each do |parcel| %>
      <li><a href="/parcel_input/<%= parcel.id %>/edit"><%= parcel.name %></a></li>
    <% end %>
  </ul>
<% else %>
  <p>There are currently no packages to display.</p>
<% end %>

<a href="/parcel_input/new">Add a new package</a>

<form action="/parcel_input">
  <div class="form-group">
    <label for="search">Search</label>
    <input id="search" name="search" class="form-control" type="text">
  </div>
  <button type="submit" class="btn">Go!</button>
</form>
