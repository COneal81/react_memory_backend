class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :user_email, :password, :family_member_email
end
