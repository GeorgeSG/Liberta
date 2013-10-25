Sequel.migration do
  change do
    create_table(:print_tags) do
      primary_key :id, autoincrement: true
      foreign_key :print_id, :prints
      foreign_key :tag_id, :tags
    end
  end
end
