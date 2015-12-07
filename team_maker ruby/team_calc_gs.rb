## in controller

  def solution
    @num_teams = params[:num_teams]
    @students = params[:students]
    @list_students = @students.split(/\r\n|\n/) # create separate entries per line from text area
    @list_students.reject!(&:empty?) # remove empty values from students array
    @num_students = @list_students.count # number of students in the array
    @size_normal = @num_students.to_i / @num_teams.to_i # number of students in normal teams 
    @num_oddman = @num_students.to_i % @num_teams.to_i # number of oddman teams
    @size_oddman = @size_normal + 1 # number of students in oddman teams
    @num_normal = @num_teams.to_i - @num_oddman # number of normal teams
    # redirect_to "/posts?name=#{@name}", notice: "Good work, #{@name}! We will get back to you shortly."
  end

  ## ih helper

  module TeamcalcHelper
  def team_calc(a,b)
    a = @num_students.to_i
    b = @num_teams.to_i
    size_normal = a / b # number of students in normal size team 
    num_oddman = a % b # number of oddman teams
    size_oddman = size_normal + 1 # number of students in oddman teams
    num_normal = b - num_oddman # number of normal teams

    if a % b == 0 && a / b >= 2
      return "There will be #{num_normal} team(s) of #{size_normal}."
    elsif a / b < 2
      return "You have too many teams, which would result in there being 1 or more teams of 1. Input a greater number of students or a smaller number of teams to correct this."
    else
      return "There will be #{num_normal} team(s) of #{size_normal} and #{num_oddman} team(s) of #{size_oddman}."
    end
  end    
end

## view results page

<div class="page-header">
  <h3>We need to put <%= @num_students %> students into <%= @num_teams %> teams. <small><%= team_calc(@num_students, @num_teams) %></small></h3>
</div>
<!-- <% @list_students.each do |student| %>
<p><%= student %></p>
<% end %>
<br />
<br />
-->
<% n = 0 %>
<% if @num_students.to_i % @num_teams.to_i == 0 && @num_students.to_i / @num_teams.to_i >= 2 %>
  <% @num_teams.to_i.times do %>
    <div class="col-md-2">
      <table class="table table-hover">
        <h4>Team <%= n = n + 1 %> <small>(<%= @size_normal %>)</small></h4>
          <% @list_students.sample(@size_normal).each do |i| %>
            <% @list_students.delete(i) %>
              <tr>
                <td><%= i %></td>
              </tr>
          <% end %>
      </table>
    </div>
  <% end %>
<% elsif @num_students.to_i / @num_teams.to_i < 2 %>
  <h1>FAILURE</h1>
<% else %>
  <% @num_normal.times do %>
    <div class="col-md-2">  
      <table class="table table-hover">
        <h4>Team <%= n = n + 1 %> <small>(<%= @size_normal %>)</small></h4>
          <% @list_students.sample(@size_normal).each do |i| %>
            <% @list_students.delete(i) %>
              <tr>
                <td><%= i %></td>
              </tr>
              <% @list_leftover = @list_students %>
            <% end %>
      </table>
    </div>
  <% end %>
  <% @num_oddman.times do %>
    <div class="col-md-2">  
      <table class="table table-hover">
        <h4>Team <%= n = n + 1 %> <small>(<%= @size_oddman %>)</small></h4>
          <% @list_leftover.sample(@size_oddman).each do |i| %>
            <% @list_leftover.delete(i) %>
              <tr>
                <td><%= i %></td>
              </tr>
            <% end %>
      </table>
    </div>
  <% end %>
<% end %>