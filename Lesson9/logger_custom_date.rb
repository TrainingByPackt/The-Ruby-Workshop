require 'logger'

logger = Logger.new(STDOUT)
logger.datetime_format = "%h %d %Y - %I:%M:%S%P "
logger.debug("Hey there, nice log")