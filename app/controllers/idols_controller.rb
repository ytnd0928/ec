class IdolsController < ApplicationController

  def create
    @idol = current_user.idols.build(idol_params)
    if @idol.save
      # Idolが正常に保存されたときの処理を書く
      pp '🍄🍄🍄🍄🍄🍄'
    else
      # Idolの保存に失敗したときの処理を書く
      pp '📕'
    end
  end

  def update
    @idol = current_user.idols.find(params.id)
    if @idol.update(idol_params)
      # Idolが正常に更新されたときの処理を書く
      pp '🍄🍄🍄🍄🍄🍄'
    else
      # Idolの更新に失敗したときの処理を書く
      pp '📕'
    end
  end

  def destroy
    @idol = current_user.idols.find(params[:id])
    if @idol.destroy
      # Idolが正常に削除されたときの処理を書く
      pp '🍄🍄🍄🍄🍄🍄'
    else
      # Idolの削除に失敗したときの処理を書く
      pp '📕'
    end
  end

  private

  def idol_params
    params.require(:idol).permit(:name, :group_name) # ここにIdolのパラメータを追加します
  end
end
