<div>$Content</div>



<div>
	<%-- VARIABLE --%>
	<h3>$ExampleVariableTitle</h3>
	$ExampleVariablePrompt

	<pre>$ExampleVariable</pre>
</div>



<%-- IF --%>
<div>
	<h3>$ExampleIfConditionTitle</h3>
	$ExampleIfConditionPrompt

	<pre>
		<% if $ExampleIfConditionToggle %>
			$ExampleIfConditionContent
		<% end_if %>
	</pre>
</div>



<%-- IF/ELSE --%>
<div>
	<h3>$ExampleIfElseConditionTitle</h3>
	$ExampleIfElseConditionPrompt

	<pre>
		<% if $ExampleIfElseConditionToggle %>
			$ExampleIfElseConditionToggleTrueContent
		<% else %>
			$ExampleIfElseConditionToggleFalseContent
		<% end_if %>
	</pre>
</div>



<%-- LOOPING --%>
<h3>$ExampleLoopingTitle</h3>
$ExampleLoopingPrompt

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