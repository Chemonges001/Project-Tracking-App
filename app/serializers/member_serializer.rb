class MemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :project_id, :user_id
end
