class ItemsController < ApplicationController
  def index
  @items = Item.all
  end

  def show
  @item = Item.find( params[:id] ) #IDでデータベースを検索した結果を変数へ
  end
end
