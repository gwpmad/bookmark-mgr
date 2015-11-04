require 'data_mapper'

class Link
  include DataMapper::Resource
  property(:id,     Serial)
  property(:title,  String)
  property :url,    String
end

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, 'postgres://localhost/bookmark_mgr_test')
DataMapper.finalize
DataMapper.auto_upgrade!
