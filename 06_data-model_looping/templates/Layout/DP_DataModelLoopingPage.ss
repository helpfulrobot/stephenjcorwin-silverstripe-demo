<div>$Content</div>

<pre>
	<% if ExampleLoopingItems %>
		<table width="100%">
			<% loop $ExampleLoopingItems %>
				<tr>
					<td>$Avatar.setWidth(100)</td>
					<td>$FirstName</td>
					<td>$LastName</td>
				</tr>
			<% end_loop %>
		</table>
	<% else %>
		No Items available yet.
	<% end_if %>
</pre>