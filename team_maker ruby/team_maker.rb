###  This extracts the team_maker code from the Rails app of same name.  No need for
## all that Rails machinery, but I wanted to keep the code as its some good early code of mine.

## Needs refactoring to make it work here.  Need input arranys for student names and team names.

## module WelcomeHelper
  
def list_maker x, y
  x.each do |student|
  y.push(student.name)
  end 
end

def team_maker x, y
  x.each do |student|
  y.push(student.teams)
  end 
end  

def roster_mker
  rand_players = []
  rand_players = @players.shuffle

  stop = @players.length/teamnames.length
  add = (players.length - (stop * teamnames.length))

  teamlist = []
  (1..stop).each do
     teamnames.each do |name|
        teamlist.push(name)
     end
  end

  i = 0
  while i < add
     teamlist.push(teamnames[i])
     i = i + 1
  end

  sorted_list = []
  sorted_list = teamlist.sort

  roster1 = {}
  rand_players.each_with_index {|k,i| roster1[k] = sorted_list[i]}
  return roster1
end

## end Module

## code that was in the controller

    name = params[:name]
    teams = params[:teams]
    @students = Student.all
    @teamxs = TeamName.all

    @players = []
    list_maker @students, @players

    @teamnames = []
    team_maker @teamxs, @teamnames
 

    rand_players = []
    rand_players = @players.shuffle

    stop = @players.length/@teamnames.length
    add = (@players.length - (stop * @teamnames.length))

    teamlist = []
    (1..stop).each do
       @teamnames.each do |name|
          teamlist.push(name)
       end
    end

    i = 0
    while i < add
       teamlist.push(@teamnames[i])
       i = i + 1
    end

    sorted_list = []
    sorted_list = teamlist.sort

    @roster = {}
    rand_players.each_with_index {|k,i|@roster[k] = sorted_list[i]}
    puts @roster
    return @roster

## getting the roster printed out

@roster.each do | name, team |
  "#{team}: #{name}"
end