class TaxasController < ApplicationController
  # GET /taxas
  # GET /taxas.xml
  def index
    @taxas = Taxa.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @taxas }
    end
  end

  # GET /taxas/1
  # GET /taxas/1.xml
  def show
    @taxa = Taxa.find(params[:id])
    @logs = @taxa.logs.all

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @taxa }
    end
  end

  # GET /taxas/new
  # GET /taxas/new.xml
  def new
    @taxa = Taxa.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @taxa }
    end
  end

  # GET /taxas/1/edit
  def edit
    @taxa = Taxa.find(params[:id])
  end

  # POST /taxas
  # POST /taxas.xml
  def create
    @taxa = Taxa.new(params[:taxa])

    respond_to do |format|
      if @taxa.save
        format.html { redirect_to(@taxa, :notice => 'Taxa was successfully created.') }
        format.xml  { render :xml => @taxa, :status => :created, :location => @taxa }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @taxa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /taxas/1
  # PUT /taxas/1.xml
  def update
    @taxa = Taxa.find(params[:id])

    respond_to do |format|
      if @taxa.update_attributes(params[:taxa])
        format.html { redirect_to(@taxa, :notice => 'Taxa was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @taxa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /taxas/1
  # DELETE /taxas/1.xml
  def destroy
    @taxa = Taxa.find(params[:id])
    @taxa.destroy

    respond_to do |format|
      format.html { redirect_to(taxas_url) }
      format.xml  { head :ok }
    end
  end
end
