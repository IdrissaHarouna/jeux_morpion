$LOAD_PATH.unshift(File.expand_path("../lib", __dir__))

require_relative "../lib/application"

Application.new.perform
