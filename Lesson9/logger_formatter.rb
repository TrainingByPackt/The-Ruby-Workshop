require 'logger'

logger = Logger.new(STDOUT)
logger.formatter = proc do |severity, datetime, progname, msg|
  "#{severity} | #{datetime} | #{msg}\n"
end
logger.debug("Hey there, nice log")