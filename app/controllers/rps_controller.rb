class RpsController < ApplicationController
  def rules 
    render(:template => "game_templates/rules")
  end

  def play
    @lose_to = { "rock" => "paper", "paper" => "scissors", "scissors" => "rock" } 
    @we = params.fetch("play")
    @they = @lose_to.keys.sample
    @result = "tied"
    
    unless @we == @they
     @result =  @lose_to[@we] == @they ? "lost" : "won"
    end
    
    render(:template => "game_templates/play")
  end
end
