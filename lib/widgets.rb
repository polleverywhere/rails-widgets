# Widgets
require 'widgets/css_template'
require 'widgets/highlightable'
require 'widgets/disableable'

##### Navigation #####
require 'widgets/navigation_item'
require 'widgets/navigation'
require 'widgets/navigation_helper'
ActionController::Base.helper Widgets::NavigationHelper

##### Tabnav #####
require 'widgets/tab'
require 'widgets/tabnav'
require 'widgets/tabnav_helper'
ActionController::Base.helper Widgets::TabnavHelper

##### Table #####
require 'widgets/table_helper'
ActionController::Base.helper Widgets::TableHelper

##### ShowHide #####
require 'widgets/showhide_helper'
ActionController::Base.helper Widgets::ShowhideHelper
