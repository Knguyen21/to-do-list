class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :priority, :time_due, :due_by
end
