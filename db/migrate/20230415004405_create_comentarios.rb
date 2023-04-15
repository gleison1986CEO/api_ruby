class CreateComentarios < ActiveRecord::Migration[6.1]
  def change
    create_table :comentarios do |t|
      t.string :nome
      t.string :comentarioT
      ##REFERENCIA OS POSTS POR ID
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
