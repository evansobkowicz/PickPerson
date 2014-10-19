class HomeScreen < PM::Screen

  include Buttons

  title "Home"

  def on_load
    view.styleId = 'home'
    icon_button(:plus, :open_add_screen, :right)
    icon_button(:list, :open_list_screen, :left)
    setup_home
  end

  def open_add_screen
    open_modal AddScreen.new(nav_bar: true)
  end

  def open_list_screen
    open_modal ListScreen.new(nav_bar: true, transition_style: UIModalTransitionStyleFlipHorizontal)
  end

  def setup_home
    @action_button = UIButton.buttonWithType UIButtonTypeRoundedRect
    @action_button.setTitle "Random Student", forState: UIControlStateNormal
    @action_button.setTitleColor "#000000".uicolor, forState: UIControlStateNormal
    @action_button.backgroundColor = '#ffffff'.uicolor
    @action_button.frame = [[0, 0], [Device.screen.width, Device.screen.height]]
    @action_button.addTarget(self,
      action: :random_person,
      forControlEvents: UIControlEventTouchUpInside)
    self.view.addSubview @action_button
  end

  def random_person
    people = Person.all.map {|person| person.name}
    App.alert(people.sample)
  end

end
