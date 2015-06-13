class ItemsController < ApplicationController
  def index
  @items = Item.all
  end

  def show
  @item = Item.find( params[:id] ) #IDでデータベースを検索した結果を変数へ
  end

 def edit
  @item = Item.find( params[:id] ) #IDでデータベースを検索した結果を変数へ
end

def update
   #idをキーにして再度データベースからデータを取得する
   @item = Item.find(params[:id])

   # これをストロングパラメータの値で変更箇所のみ上書きする
   @item.update_attributes(item_pamas)

   # show.html.erbへ飛ばす
   redirect_to "/items/#{@item.id}"
end

  def new
    @item = Item.new
  end

  def create
    # formからデータを受け取る:privateのitem_paramからデータを受け取る
    @item = Item.new(item_pamas)
    # これを保存する
    @item.save
    # show.html.erbへ飛ばす
    redirect_to "/items/#{@item.id}"
  end

  private

  def item_pamas
    # params.rewuire(:key).permit(:filter)
    params.require( :item ).permit(
      :name ,
      :price ,
      :seller_id ,
      :description ,
      :email ,
      :image_url
      )
  end
end
