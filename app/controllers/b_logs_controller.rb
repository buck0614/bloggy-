class BLogsController < ApplicationController
  # GET /b_logs
  # GET /b_logs.json
  def index
    @b_logs = BLog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @b_logs }
    end
  end

  # GET /b_logs/1
  # GET /b_logs/1.json
  def show
    @b_log = BLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @b_log }
    end
  end

  # GET /b_logs/new
  # GET /b_logs/new.json
  def new
    @b_log = BLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @b_log }
    end
  end

  # GET /b_logs/1/edit
  def edit
    @b_log = BLog.find(params[:id])
  end

  # POST /b_logs
  # POST /b_logs.json
  def create
    @b_log = BLog.new(params[:b_log])

    respond_to do |format|
      if @b_log.save
        format.html { redirect_to @b_log, notice: 'B log was successfully created.' }
        format.json { render json: @b_log, status: :created, location: @b_log }
      else
        format.html { render action: "new" }
        format.json { render json: @b_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /b_logs/1
  # PUT /b_logs/1.json
  def update
    @b_log = BLog.find(params[:id])

    respond_to do |format|
      if @b_log.update_attributes(params[:b_log])
        format.html { redirect_to @b_log, notice: 'B log was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @b_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /b_logs/1
  # DELETE /b_logs/1.json
  def destroy
    @b_log = BLog.find(params[:id])
    @b_log.destroy

    respond_to do |format|
      format.html { redirect_to b_logs_url }
      format.json { head :no_content }
    end
  end
end
