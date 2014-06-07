   
class JC
   include MongoMapper::Document
   set_collection_name "jc"
   key :address, String
   key :appear_date, String
   key :description, String
   key :j, String
   key :job, String
   key :job_address, String
   key :language1, String
   key :language2, String
   key :language3, String
   key :startby, String
end
