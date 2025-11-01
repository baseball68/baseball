class QuizzesController < ApplicationController
  def show
    q_sum = Question.count
    rand_num = SecureRandom.random_number(q_sum) + 1
    @q = Question.find(rand_num)
    @q_num = rand_num
  end

  def create
    q_num = params[:q_num].to_i
    user_id = params[:user_id].presence
    user_ans = user_id ? UserAnswer.find(user_id) : UserAnswer.new

    q_attr = "q#{q_num}_"
    user_ans[q_attr + 'id'] = params[:q_id].to_i
    user_ans[q_attr + 'yourans'] = params[:choice].to_i
    user_ans[q_attr + 'isCorrect'] = (Question.find(params[:q_id].to_i).correct == params[:choice].to_i)
    user_ans.save

    redirect_to q_num == 10 ? result_path(user_id: user_ans.id) : quiz_path(q_num + 1, user_id: user_ans.id)
  end

  def result
    @user_ans = UserAnswer.find(params[:user_id])
  end
end