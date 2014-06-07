
class JCList
   include MongoMapper::Document
   set_collection_name "jc"
   key :name, String
   key :profile, String
   key :welfare, String
   key :product, String
end
