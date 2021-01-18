class RemoveCastlesIdFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :reviews, :castles
  end
end
