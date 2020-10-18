class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :password, :email, :first_name, :last_name
end
