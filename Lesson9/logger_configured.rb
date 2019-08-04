require 'logger'

logger = Logger.new(STDOUT, progname: "MyApp", level: Logger::ERROR)
logger.debug("Hey there, nice log")