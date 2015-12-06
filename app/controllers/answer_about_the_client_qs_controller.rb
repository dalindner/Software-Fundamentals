class AnswerAboutTheClientQsController < ApplicationController
  before_action :set_answer_about_the_client_q, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @answer_about_the_client_qs = AnswerAboutTheClientQ.all
    respond_with(@answer_about_the_client_qs)
  end

  def show
    respond_with(@answer_about_the_client_q)
  end

  def new
    @answer_about_the_client_q = AnswerAboutTheClientQ.new
    respond_with(@answer_about_the_client_q)
  end

  def edit
  end

  def create
    @answer_about_the_client_q = AnswerAboutTheClientQ.new(answer_about_the_client_q_params)
    @answer_about_the_client_q.project_id = current_user.id
    @answer_about_the_client_q.save
    respond_with(@answer_about_the_client_q)
  end

  def update
    @answer_about_the_client_q.update(answer_about_the_client_q_params)
    redirect_to questions_project_path(@answer_about_the_client_q.id)
  end

  def destroy
    @answer_about_the_client_q.destroy
    respond_with(@answer_about_the_client_q)
  end

  private
    def set_answer_about_the_client_q
      @answer_about_the_client_q = AnswerAboutTheClientQ.find(params[:id])
    end

    def answer_about_the_client_q_params
      params.require(:answer_about_the_client_q).permit(:answer1, :answer2, :answer3, :answer4, :answer5, :answer6, :answer7, :answer8, :answer9, :answer10, :answer11, :answer12, :answer13, :answer14, :answer15, :answer16, :answer17, :answer18, :answer19, :answer20, :answer21, :answer22, :answer23, :answer24, :answer25)
    end
end
