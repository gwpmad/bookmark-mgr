require 'data_mapper'

class Link
  include DataMapper::Resource
  property(:id,     Serial)
  property(:title,  String)
  property :url,    String
end

db_hash = {test: 'bookmark_mgr_test', development: 'bookmark_mgr_dev'}
db_str = db_hash[ENV['RACK_ENV'].to_sym]

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, "postgres://localhost/#{db_str}")
DataMapper.finalize
DataMapper.auto_upgrade!
