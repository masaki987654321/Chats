class RemarksController < ApplicationController
  before_action :set_remark, only: [:destroy]

  # POST /remark
  def create
    @remark = Remark.new(remark_params)
    @remark.ip = request.remote_ip

    @room = @remark.room

    if @remark.save
      redirect_to @room, notice: 'Remark was successfully created.'
    else
      redirect_to @room, notice: 'Remark creation failed.'
    end

  end

  # DELETE /remarks/1
  def destroy
    @room = @remark.room
    @remark.destroy

    redirect_to @room, notice: 'Comment was successfully destroyed.' 
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_remark
    @remark = Remark.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def remark_params
    params.require(:remark).permit(:text, :room_id)
  end


end
