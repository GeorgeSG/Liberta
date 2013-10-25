Sequel.migration do
  change do
    create_table(:users) do
      primary_key :id
      Integer :faculty_number, uniq: true, index: true
      String :name, null: false
      String :email, null: false, unique: true
      Integre :authorization_level, null: false
      TrueClass :is_active, default: true, null: false
      File :avatar
      constraint(:authorization_level_is_in_range) { (0..2).include? authorization_level }
    end
  end
end
