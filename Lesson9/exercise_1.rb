require 'logger'

logger = Logger.new(STDOUT)
logger.debug('debug log')
logger.info('info log')
logger.warn('warn log')
logger.error('error log')
