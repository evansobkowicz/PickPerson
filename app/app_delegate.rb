class AppDelegate < PM::Delegate

  include CDQ

  status_bar true, animation: :none

  def on_load(app, options)
    cdq.setup
    initialize_pixate
    open HomeScreen.new(nav_bar: true)
  end

  def initialize_pixate
    PixateFreestyle.initializePixateFreestyle
    PixateFreestyle.updateStylesForAllViews
    setup_pixate_monitor
  end

  def setup_pixate_monitor
    return unless Device.simulator?
    PXStylesheet.styleSheetFromFilePath('/Users/evan/Documents/Projects/Apps/PickStudent/resources/default.css', withOrigin:PXStylesheetOriginApplication)
    PixateFreestyle.updateStylesForAllViews
    PXStylesheet.currentApplicationStylesheet.monitorChanges = true
  end

end
