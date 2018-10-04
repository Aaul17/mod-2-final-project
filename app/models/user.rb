class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :age, numericality: {integer_only: true, greater_than: 0}
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_with EmailAddress::ActiveRecordValidator, field: :email
  validates :bio, presence: true
  validates :occupation, presence: true

  belongs_to :image
  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :active_relationships, class_name: "Match",
                                  foreign_key: "matcher_id",
                                  dependent: :destroy
  has_many :passive_relationships, class_name: "Match",
                                  foreign_key: "matched_id",
                                  dependent: :destroy
  has_many :matching, through: :active_relationships, source: :matched
  has_many :matchers, through: :passive_relationships, source: :matcher
  has_many :sent_conversations, class_name: "Conversation",
                                  foreign_key: "sender_id",
                                  dependent: :destroy
  has_many :received_conversations, class_name: "Conversation",
                                  foreign_key: "recipient_id",
                                  dependent: :destroy
  accepts_nested_attributes_for :interests

  def match(other_user)
    matching << other_user
  end

  def unmatch(other_user)
    matching.delete(other_user)
  end

  def matching?(other_user)
    matching.include?(other_user)
  end
end
