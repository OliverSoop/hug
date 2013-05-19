class SinglesController < ApplicationController
  # GET /singles
  # GET /singles.json
  def index
    @singles = Single.order("year").page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @singles }
    end
  end

  # GET /singles/1
  # GET /singles/1.json
  def show
    @single = Single.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @single }
    end
  end

  # GET /singles/new
  # GET /singles/new.json
  def new
    @single = Single.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @single }
    end
  end

  # GET /singles/1/edit
  def edit
    @single = Single.find(params[:id])
  end

  # POST /singles
  # POST /singles.json
  def create
    @single = Single.new(params[:single])

    respond_to do |format|
      if @single.save
        format.html { redirect_to @single, notice: 'Single was successfully created.' }
        format.json { render json: @single, status: :created, location: @single }
      else
        format.html { render action: "new" }
        format.json { render json: @single.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /singles/1
  # PUT /singles/1.json
  def update
    @single = Single.find(params[:id])

    respond_to do |format|
      if @single.update_attributes(params[:single])
        format.html { redirect_to @single, notice: 'Single was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @single.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /singles/1
  # DELETE /singles/1.json
  def destroy
    @single = Single.find(params[:id])
    @single.destroy

    respond_to do |format|
      format.html { redirect_to singles_url }
      format.json { head :no_content }
    end
  end
end
