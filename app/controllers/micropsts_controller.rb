class MicropstsController < ApplicationController
  # GET /micropsts
  # GET /micropsts.json
  def index
    @micropsts = Micropst.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micropsts }
    end
  end

  # GET /micropsts/1
  # GET /micropsts/1.json
  def show
    @micropst = Micropst.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micropst }
    end
  end

  # GET /micropsts/new
  # GET /micropsts/new.json
  def new
    @micropst = Micropst.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micropst }
    end
  end

  # GET /micropsts/1/edit
  def edit
    @micropst = Micropst.find(params[:id])
  end

  # POST /micropsts
  # POST /micropsts.json
  def create
    @micropst = Micropst.new(params[:micropst])

    respond_to do |format|
      if @micropst.save
        format.html { redirect_to @micropst, notice: 'Micropst was successfully created.' }
        format.json { render json: @micropst, status: :created, location: @micropst }
      else
        format.html { render action: "new" }
        format.json { render json: @micropst.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micropsts/1
  # PUT /micropsts/1.json
  def update
    @micropst = Micropst.find(params[:id])

    respond_to do |format|
      if @micropst.update_attributes(params[:micropst])
        format.html { redirect_to @micropst, notice: 'Micropst was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @micropst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropsts/1
  # DELETE /micropsts/1.json
  def destroy
    @micropst = Micropst.find(params[:id])
    @micropst.destroy

    respond_to do |format|
      format.html { redirect_to micropsts_url }
      format.json { head :ok }
    end
  end
end
