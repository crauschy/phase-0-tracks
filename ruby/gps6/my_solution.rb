# Virus Predictor

# I worked on this challenge [with Lina Z., with: Neal Peters ].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative vs require - require requires an absolute path to the file. require relative takes a relative path. You would have to write: ../state data if it wasnt in the same folder

require_relative 'state_data'

class VirusPredictor
 #it will run the instace of a new method: state, population, population density as arguments; this method will assign instance variables for each of the arguments.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#will run predicted deaths method and speed of spread method
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #will make predicted deaths and speed of spread inaccessible

#takes population density, population and state arguments and runs the math based on population density. it will return a number of deaths for each state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#takes population density and state as arguments and return a speed value/per month, based on population density.
  # def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

  def speed_of_spread(speed = 2.5)
    speed = speed - 0.5 * (@population_density / 50).to_i
    if speed < 0.5
      speed = 0.5
    end
    # end


    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each do |state, population_data|
  report = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  report.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.speed_of_spread

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# -- one of the hashes uses a hash rocket, the interior hash uses symbols
# -- require_relative allows you to link/refer to another document in the same directory; require links/refers to a library/directory already included in Ruby, but that needs to be loaded to use.
# -- .each, .map, .each_value, etc.
# -- there seem to be a lot of variables whose values are directly related to constant values from our state data doc... population and population_density. It almost seems unnecessary to have such complicated methods in some of these cases...
# -- refactoring directly related values; creating new instances of a class that has nested data that needs to be passed in at initialization.