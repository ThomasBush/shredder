class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  # GET /workouts
  # GET /workouts.json
  def index
    @workouts = Workout.all
  end

  # GET /workouts/1
  # GET /workouts/1.json
  def show
  end

  # GET /workouts/new
  def new
    @workout = Workout.new
  end

  # GET /workouts/1/edit
  def edit
  end

  # POST /workouts
  # POST /workouts.json
  def create
    @workout = Workout.new(workout_params)

    respond_to do |format|
      if @workout.save
        format.html { redirect_to @workout, notice: 'Workout was successfully created.' }
        format.json { render action: 'show', status: :created, location: @workout }
      else
        format.html { render action: 'new' }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workouts/1
  # PATCH/PUT /workouts/1.json
  def update
    respond_to do |format|
      if @workout.update(workout_params)
        format.html { redirect_to @workout, notice: 'Workout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.json
  def destroy
    @workout.destroy
    respond_to do |format|
      format.html { redirect_to workouts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = Workout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_params
      params.require(:workout).permit(:name, exercises_attributes: [ :id, :name, :workout_id ], lifts_attributes: [ :id, :reps, :weight, :exercise_id ])
    end
end