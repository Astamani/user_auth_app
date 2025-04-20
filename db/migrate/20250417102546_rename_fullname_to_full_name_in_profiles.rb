class RenameFullnameToFullNameInProfiles < ActiveRecord::Migration[8.0]
  def change
    rename_column :profiles, :fullname, :full_name
  end
  
end
