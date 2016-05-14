<div>$Content</div>


$ColorPrompt
<div><strong>My Color:</strong></div>
<pre>
	<% if $MyColor %>
		<div class="$MyColor.CSSClass('background')" style="height: 20px;"></div>
	<% else %>
		No option set yet.
	<% end_if %>
</pre>


$IconPrompt
<div><strong>My Icon:</strong></div>
<pre>
	<% if $MyIcon %>
		<div>$MyIcon.Render()</div>
	<% else %>
		No option set yet.
	<% end_if %>
</pre>