class Identity
  include MongoMapper::Document

  key :user_id, integer
  key :provider, string
  key :uid, string
  key :uname, string
  key :uemail, string

  def self.find_with_omniauth(auth)
    find_by_provider_and_uid(auth['provider'], auth['uid'])
  end

  def self.create_with_omniauth(auth)
    create(uid: auth['uid'], provider: auth['provider'])
  end

  one :user
end
