class AddScreen < PM::FormScreen

  include Buttons

  title "Add Person"

  def on_load
    view.styleId = 'add'
    icon_button(:times, :close, :left)
  end

  def add_person(name)
    Person.create(name: name)
    cdq.save
    Motion::Blitz.success
  end

  def form_data
    [{
      title: "New Person",
      cells: [{
        name: "name",
        title: "Name",
        type: :text,
        value: ""
      }, {
        name: :submit,
        title: "Save",
        type: :button,
        action: "save_form:"
      }]
    }]
  end

  def save_form(cell)
    name = render_form[:name]
    if name == "" || name == nil
      App.alert('Invalid Name')
    else
      add_person(name)
      close
    end
  end

end
