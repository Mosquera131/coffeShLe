class ReportsController < ApplicationController
  before_action :set_report, only: %i[ show update destroy ]

  # GET /reports
  def index
    @reports = Report.includes(:user).all

    render json: @reports.as_json(include: { user: { only: [ :id, :name, :email ] } })
  end

  # GET /reports/1
  def show
    @report = Report.find(params[:id])
    render json: @report.as_json(include: { user: { only: [ :id, :name, :email ] } }, except: [ :updated_at ])
  end

  # POST /reports
  def create
    @report = Report.new(report_params)

    if @report.save
      render json: @report, status: :created, location: @report
    else
      render json: @report.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reports/1
  def update
    if @report.update(report_params)
      render json: @report
    else
      render :edit
    end
  end

  # DELETE /reports/1
  def destroy
    @report.destroy!
    redirect_to reports_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @report = Report.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def report_params
      params.require(:report).permit(:missing_element, :comment, :report_date, :user_id)
    end
end
