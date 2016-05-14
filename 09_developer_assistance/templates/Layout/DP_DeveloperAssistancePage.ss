<div>$Content</div>

<div><strong>Example:</strong></div>
<div class="developer-assistance-demonstration">Right-click me!</div>

<p>
	<% if $isCMSAdmin %>
		<a class="btn" title="Log Out" href="Security/logout" target="_self">Log Out</a>
	<% else %>
		<a class="btn" title="Log In" href="admin" target="_blank">Log In</a>
	<% end_if %>
</p>