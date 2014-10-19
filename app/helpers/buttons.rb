module Buttons

  include MotionAwesome

  def icon_button(icon, action, placement)
    ui_label = label(icon, size: 22)
    set_nav_bar_button(placement, custom_view: ui_label)
    ui_label.setUserInteractionEnabled(true)
    ui_label.addGestureRecognizer(UITapGestureRecognizer.alloc.initWithTarget(self, action: action))
  end

  def open_add_screen
    open_modal AddScreen.new(nav_bar: true)
  end

  def open_list_screen
    open_modal ListScreen.new(nav_bar: true, transition_style: UIModalTransitionStyleFlipHorizontal)
  end

end
