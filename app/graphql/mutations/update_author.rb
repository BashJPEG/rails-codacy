class Mutations::UpdateAuthor < Mutations::BaseMutation
  null true

  argument :id, Integer, required: true
  argument :name, String, required: true
  argument :age, Integer, required: false

  field :author, AuthorType, null: true
  field :errors, [String], null: false

  def resolve(id:, name:, age:)
    author = Author.find_by(id: id)

    if author.update(name: name, age: age)
      {
        author: author,
        errors: [],
      }
    else
      {
        author: nil,
        errors: author.errors.full_messages
      }
    end
  end
end
