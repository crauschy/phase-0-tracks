
class TodoList
  attr_reader :list

  def initialize(list)
    @list = list
  end

  def get_items
    return @list
  end


end


# list = TodoList.new(["do the dishes", "mow the lawn"])

# p list.get_items