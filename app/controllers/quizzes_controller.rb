class QuizzesController < ApplicationController
  def show
   @q_num = params[:id] #現在何問目かを表すもの
        if @q_num != '1' #1問目以外のとき
        @user_id = params[:user_id] #user_idを受け取る
        end
        valid_ids = Question.pluck(:id)
        #有効のidを全てとりだす
        rand_id = valid_ids.sample
        #ランダムに一つ選ぶ
        @q = Question.find(rand_id)
        #先ほど作った rand_id を使って、ランダムに1問取り出し、インスタンス変数 @q に入れる
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

    redirect_to q_num == 10 ? result_quizzes_path(user_id: user_ans.id) : quiz_path(q_num + 1, user_id: user_ans.id)
  end

  def result
    @user_ans = UserAnswer.find(params[:user_id])
  end
end