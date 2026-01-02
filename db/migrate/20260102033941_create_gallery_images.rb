class CreateGalleryImages < ActiveRecord::Migration[8.0]
  def change
    create_table :gallery_images do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :content_type
      t.bigint :byte_size
      t.timestamps
    end
  end
end
