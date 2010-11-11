class SprawdziansController < ApplicationController
  helper_method :sort_column, :sort_direction

  # GET /sprawdzians
  # GET /sprawdzians.xml
  def index
    query = params[:search_query] ? params[:search_query] : ""
    query = "%"+query+"%" 
    @sprawdzians = Sprawdzian.where('nazwa LIKE ?', query).order(sort_column + " " + sort_direction).paginate :per_page => 1


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sprawdzians }
    end
  end

  # GET /sprawdzians/1
  # GET /sprawdzians/1.xml
  def show
    @sprawdzian = Sprawdzian.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sprawdzian }
    end
  end

  # GET /sprawdzians/new
  # GET /sprawdzians/new.xml
  def new
    @sprawdzian = Sprawdzian.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sprawdzian }
    end
  end

  # GET /sprawdzians/1/edit
  def edit
    @sprawdzian = Sprawdzian.find(params[:id])
  end

  # POST /sprawdzians
  # POST /sprawdzians.xml
  def create
    @sprawdzian = Sprawdzian.new(params[:sprawdzian])

    respond_to do |format|
      if @sprawdzian.save
        format.html { redirect_to(@sprawdzian, :notice => 'Dodano nowy sprawdzian.')}
        format.xml  { render :xml => @sprawdzian, :status => :created, :location => @sprawdzian }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sprawdzian.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sprawdzians/1
  # PUT /sprawdzians/1.xml
  def update
    @sprawdzian = Sprawdzian.find(params[:id])

    respond_to do |format|
      if @sprawdzian.update_attributes(params[:sprawdzian])
        format.html { redirect_to(@sprawdzian, :notice => 'Sprawdzian was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sprawdzian.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sprawdzians/1
  # DELETE /sprawdzians/1.xml
  def destroy
    @sprawdzian = Sprawdzian.find(params[:id])
    @sprawdzian.destroy

    respond_to do |format|
      format.html { redirect_to(sprawdzians_url) }
      format.xml  { head :ok }
    end
  end
  private
  def sort_column
      Sprawdzian.column_names.include?(params[:sort]) ? params[:sort] : "nazwa"
  end
  def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction]: "asc"
  end
end
