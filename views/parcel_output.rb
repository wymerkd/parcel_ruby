<h1>Update: <%= @parcel.name() %></h1>

<form action="/parcel_input/<%= @parcel.id() %>" method="post">
  <input name="_method" type="hidden" value="patch">

  <label for="name">Rename parcel</label>
  <input id="name" name="name" type="text">

  <button type="submit">Update</button>
</form>

<p><a href="/">Return to parcel list</a></p>

<form action="/parcel_input/<%= @parcel.id() %>" method="post">
  <input name="_method" type="hidden" value="delete">

  <button type="submit">Delete parcel</button>
</form>
