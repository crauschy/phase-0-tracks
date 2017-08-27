
class TodoList
  attr_reader :list

  def initialize(list)
    @list = list
  end

  def get_items
    @list
  end

  def add_item(new_item)
    @list.push(new_item)
  end

end


# list = TodoList.new(["do the dishes", "mow the lawn"])

# p list.get_items