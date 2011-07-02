class PaysController < ApplicationController

  before_filter :load_accounts, :only => [:new, :edit, :create, :update]
  before_filter :load_favoreds, :only => [:new, :edit, :create, :update]

  # GET /pays
  # GET /pays.xml
  def index
    @pays = Pay.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pays }
    end
  end

  # GET /pays/1
  # GET /pays/1.xml
  def show
    @pay = Pay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pay }
    end
  end

  # GET /pays/new
  # GET /pays/new.xml
  def new
    @pay = Pay.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pay }
    end
  end

  # GET /pays/1/edit
  def edit
    @pay = Pay.find(params[:id])
  end

  # POST /pays
  # POST /pays.xml
  def create
    @pay = Pay.new(params[:pay])

    respond_to do |format|
      if @pay.save
        format.html { redirect_to(@pay, :notice => 'Pay was successfully created.') }
        format.xml  { render :xml => @pay, :status => :created, :location => @pay }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pay.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pays/1
  # PUT /pays/1.xml
  def update
    @pay = Pay.find(params[:id])

    respond_to do |format|
      if @pay.update_attributes(params[:pay])
        format.html { redirect_to(@pay, :notice => 'Pay was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pay.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pays/1
  # DELETE /pays/1.xml
  def destroy
    @pay = Pay.find(params[:id])
    @pay.destroy

    respond_to do |format|
      format.html { redirect_to(pays_url) }
      format.xml  { head :ok }
    end
  end
  
private
  def load_accounts
    @accounts = Account.all.collect {|a| [a.name, a.id]}
  end
  
  def load_favoreds
    @favoreds = Favored.all.collect {|f| [f.name, f.id]}
  end
end
