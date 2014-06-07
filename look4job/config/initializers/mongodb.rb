require 'mongo_mapper'

configfile = Rails.root+"/config/mongodb.yml"
if File.exist? configfile
   config = YAML.load(file.read(configfile))[RAILS_ENV]
   #if config
      #MongoMapper.connection = Mongo::Connection.new(config["server"],config["port"] || 27017) 
      #MongoMapper.database = config["database"]
   #end
end


MongoMapper.connection = Mongo::Connection.new('localhost',27017) 
MongoMapper.database = "jobFinder"
