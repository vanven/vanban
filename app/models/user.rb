class User
  include MongoMapper::Document

  key :provider, String
  key :uid, String
  key :name, String
  key :email, String

    attr_accessible :name, :provider, :uid, :email, :kanbans

  validates_presence_of :name

  many :kanbans

  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.email = auth["info"]["email"]
    end
  end

end
