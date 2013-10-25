Sequel.migration do
  change do
    create_table(:tags) do
      primary_key :id, index: true
      String :tagname, size: 100, null: false, unique: true
    end
  end
end
