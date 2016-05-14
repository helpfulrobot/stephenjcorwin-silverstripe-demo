<div>$Content</div>



<br><hr><br>
<div><strong>Current:</strong></div>
<pre class="refresh-target">
	<% include DP_ControllerActions_Result %>
</pre>



<form method="POST" action="$Link()setobj" style="width: 100%; max-width: 100%;">
	<div>
		<input type="text" name="FirstName" placeholder="First Name" value="$FirstName">
		<input type="text" name="LastName" placeholder="Last Name" value="$LastName">
		<input type="text" name="Greeting" placeholder="Greeting" value="$Greeting">
	</div>

	<div><input type="submit" value="Submit"><button class="refresh-btn btn fa fa-refresh"></button></div>
</form>