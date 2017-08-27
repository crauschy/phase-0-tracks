
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

  def delete_item(old_item)
    @list.delete(old_item)
    @list
  end

  def get_item(i)
    @list[i]
  end
end


# list = TodoList.new(["do the dishes", "mow the lawn"])

# p list.get_items