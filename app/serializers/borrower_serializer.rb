class BorrowerSerializer < ActiveModel::Serializer
  attributes :id, :given_name, :surname, :books
end
