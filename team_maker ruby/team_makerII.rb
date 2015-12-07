## controller action

  def teamlists
    
    name = params[:name]
    teams = params[:teams]
    @students = Student.all
    @teamxs = TeamName.all

    @players = []
    list_maker @students, @players

    @teamnames = []
    team_maker @teamxs, @teamnames

    roster_maker @players, @teamnames
 
  end 


##  module WelcomeHelper
  
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

  def roster_maker (players, teamnames)
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
    return @roster
   end
#end Module