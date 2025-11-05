class RenameEventColumnsToEnglish < ActiveRecord::Migration[7.2]
  def change
  rename_column :events, :タイトル, :title
    rename_column :events, :説明, :description
    rename_column :events, :開催日, :date
    rename_column :events, :主催者, :holder
    rename_column :events, :対応部署, :team

  end
end
