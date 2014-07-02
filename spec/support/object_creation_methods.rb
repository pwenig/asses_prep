def create_user(updated_attributes = {})

  default_attributes = {
    :name => "Keith Richards",
    :password => "Stones8"
  }

  attributes = default_attributes.merge(updated_attributes)
  User.create(attributes)
end

