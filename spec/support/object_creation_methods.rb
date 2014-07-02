def create_user(updated_attributes = {})

  default_attributes = {
    :name => "Keith Richards",
    :password => "Stones8"
  }

  attributes = default_attributes.merge(updated_attributes)
  User.create(attributes)
end

def create_book(updated_attributes = {})
  default_attributes = {
    :name => "Everyman",
    :author => "Philip Roth"
  }
  attributes = default_attributes.merge(updated_attributes)
  Book.create(attributes)

end