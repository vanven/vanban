class Identity
  include MongoMapper::Document

  key :user_id, Integer
  key :provider, String
  key :uid, String
  key :uname, String
  key :uemail, String

  def self.find_with_omniauth(auth)
    find_by_provider_and_uid(auth['provider'], auth['uid'])
  end

  def self.create_with_omniauth(auth)
    create(uid: auth['uid'], provider: auth['provider'])
  end

  one :user
end
