# License: AGPL-3.0-or-later WITH Web-Template-Output-Additional-Permission-3.0-or-later
require File.expand_path('config/environments/development')
Commitchange::Application.configure do
  
  config.active_record.logger = nil
end