class CommEventsController < ApplicationController
  # GET /comm_events
  # GET /comm_events.json
  def index
    @comm_events = CommEvent.all.sort{|a,b| b.created_at <=> a.created_at }

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comm_events }
    end
  end

  # GET /comm_events/1
  # GET /comm_events/1.json
  def show
    @comm_event = CommEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comm_event }
    end
  end

  # GET /comm_events/new
  # GET /comm_events/new.json
  def new
    @comm_event = CommEvent.new
	@family_members = FamilyMember.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comm_event }
    end
  end

  # GET /comm_events/1/edit
  def edit
    @comm_event = CommEvent.find(params[:id])
  end

  # POST /comm_events
  # POST /comm_events.json
  def create
    @comm_event = CommEvent.new(params[:comm_event])
	@comm_event.ts = Time.new

	@family_members = FamilyMember.all

    respond_to do |format|
      if @comm_event.save
        format.html { redirect_to @comm_event, notice: 'Comm event was successfully created.' }
        format.json { render json: @comm_event, status: :created, location: @comm_event }
      else
        format.html { render action: "new" }
        format.json { render json: @comm_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comm_events/1
  # PUT /comm_events/1.json
  def update
    @comm_event = CommEvent.find(params[:id])

    respond_to do |format|
      if @comm_event.update_attributes(params[:comm_event])
        format.html { redirect_to @comm_event, notice: 'Comm event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comm_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comm_events/1
  # DELETE /comm_events/1.json
  def destroy
    @comm_event = CommEvent.find(params[:id])
    @comm_event.destroy

    respond_to do |format|
      format.html { redirect_to comm_events_url }
      format.json { head :no_content }
    end
  end
end
