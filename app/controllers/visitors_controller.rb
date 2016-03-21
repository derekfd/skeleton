class VisitorsController < ApplicationController
  
  def index
    @leagues = FandoLeague.all
    respond_to do |format|
      format.html {}
    end
  end
end
