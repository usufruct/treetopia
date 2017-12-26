config_dir = File.expand_path('../config', __dir__)
$LOAD_PATH.unshift(config_dir)

module Persistence
    require 'db_config'
end
