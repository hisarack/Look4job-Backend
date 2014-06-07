
class Look4jobController <  ApplicationController
   def index
      @jclist = JC.sort(:name).limit(20)
   end 
   def apiCompanyList
      firstId = params[:firstId]
      endId = params[:firstId]+params[:range]
      @jclist = JC
         .sort(:activate)
         .limit(endId)
         .skip(firstId)
         .fields(:name,:activate)
         .all
      respond_to do |format|
         format.xml  { render xml: @jclist }
         format.json { render json: @jclist }
      end
   end
   def apiCompany
      @jc = JC.find(params[:index])
      respond_to do |format|
         format.xml  { render xml: @jc }
         format.json { render json: @jc }
      end
   end
end
