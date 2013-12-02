class AddPostOnFacebookToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :post_on_facebook, :boolean
  end
end
