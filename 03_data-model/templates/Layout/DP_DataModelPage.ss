<div>$Content</div>


<% if $ActiveItem %> 
<div><strong>Active Item:</strong></div>
<pre>
	$ActiveItem.FirstName $ActiveItem.LastName says,"$ActiveItem.Greeting"	
</pre>

<div><strong>Active Item &ndash; Function:</strong></div>
<pre>
	$ActiveItem.DoGreeting
</pre>
<% else %>
	<pre>No Active Item selected yet.</pre>
<% end_if %>