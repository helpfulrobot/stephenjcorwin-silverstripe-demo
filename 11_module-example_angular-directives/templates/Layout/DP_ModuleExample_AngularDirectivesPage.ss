<div>$Content</div>



<div><strong>Active Directive:</strong> $ActiveDirective.Name :: $ActiveDirective.ClassName</div>
<div>
	<% if $ActiveDirective %>
		$ActiveDirective.Render()
	<% else %>
		No Active Directive set yet.
	<% end_if %>
</div>