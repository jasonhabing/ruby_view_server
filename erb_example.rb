require 'erb'

name = "Jason"
age = 25
favoritesport = "Hockey"
male = true

if male == true
	referas = "He"
else
	referas = "She"
end

if male == true
	referas2 = "his"
else
	referas2 = "her"
end


sports = ['hockey', 'baseball', 'football', 'soccer']



template = ERB.new "

<p>This person's name is <%= name %></p>
<p><%= referas %> is <%= age %> and <%= referas2 %> favorite sport is <%= favoritesport %></p>
<p>By the way, here are some really cool sports:</p>
<ul>
<% sports.each do |sport| %> 
<li><%= sport %></li>
<% end %>
</ul>

"

puts template.result(binding)
