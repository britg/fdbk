require 'mongo_mapper'
logger = Logger.new($stdout)
MongoMapper.connection = Mongo::Connection.new('db.mongohq.com', 27017, :logger => logger)
MongoMapper.database = "fdbk"
MongoMapper.database.authenticate(ENV['mongohq_user'], ENV['mongohq_pass'])
#MongoMapper.connection = Mongo::Connection.new('localhost', 27017, :logger => logger)
#MongoMapper.database = 'hardhat'
