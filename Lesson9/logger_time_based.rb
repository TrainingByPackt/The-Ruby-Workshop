require 'logger'

logger = Logger.new("log.txt", "daily")
logger.debug("Hey there, nice log")
