class MoveBodyToContent < ActiveRecord::Migration[7.1]
  def change
    Blog.all.find_each do |blogPost|
      blogPost.update(content: blogPost.body)
    end
    remove_column :blogs, :body
  end
end
