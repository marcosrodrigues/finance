class FavoredsController < ApplicationController
  # GET /favoreds
  # GET /favoreds.xml
  def index
    @favoreds = Favored.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @favoreds }
    end
  end

  # GET /favoreds/1
  # GET /favoreds/1.xml
  def show
    @favored = Favored.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @favored }
    end
  end

  # GET /favoreds/new
  # GET /favoreds/new.xml
  def new
    @favored = Favored.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @favored }
    end
  end

  # GET /favoreds/1/edit
  def edit
    @favored = Favored.find(params[:id])
  end

  # POST /favoreds
  # POST /favoreds.xml
  def create
    @favored = Favored.new(params[:favored])

    respond_to do |format|
      if @favored.save
        format.html { redirect_to(@favored, :notice => 'Favored was successfully created.') }
        format.xml  { render :xml => @favored, :status => :created, :location => @favored }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @favored.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /favoreds/1
  # PUT /favoreds/1.xml
  def update
    @favored = Favored.find(params[:id])

    respond_to do |format|
      if @favored.update_attributes(params[:favored])
        format.html { redirect_to(@favored, :notice => 'Favored was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @favored.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /favoreds/1
  # DELETE /favoreds/1.xml
  def destroy
    @favored = Favored.find(params[:id])
    @favored.destroy

    respond_to do |format|
      format.html { redirect_to(favoreds_url) }
      format.xml  { head :ok }
    end
  end
end
