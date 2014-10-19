class ListScreen < PM::TableScreen

  include Buttons

  title "People"

  def on_load
    view.styleId = 'list'
    icon_button(:times, :close, :left)
    icon_button(:plus, :open_add_screen, :right)
  end

  def table_data
    [{
      title: nil,
      cells: list_people
    }]
  end

  def list_people
    Person.sort_by(:name).map {|person| {title: person.name, editing_style: :delete}}
  end

  def on_cell_deleted(cell)
    if cell[:title]
      name = Person.where(:name).contains(cell[:title]).first
      name.destroy
      cdq.save
      App.alert(cell[:title] + ' was deleted.')
    else
      App.alert('Error: Could not delete person.')
    end
    update_table_data
  end

  def on_return(args)
    update_table_data
  end

end
