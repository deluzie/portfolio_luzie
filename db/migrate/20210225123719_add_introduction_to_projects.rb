class AddIntroductionToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :introduction, :string
  end
end
