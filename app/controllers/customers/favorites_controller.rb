class Customers::FavoritesController < ApplicationController
    def create
        item = Item.find(params[:item_id])
        favorite = current_end_user.favorites.new(item_id: item.id)
        favorite.save
        redirect_to items_path(item)
    end
    def destroy
        item = Item.find(params[:item_id])
        favorite = current_end_user.favorites.find_by(item_id: item.id)
        favorite.destroy
        redirect_to items_path(item)
    end
end