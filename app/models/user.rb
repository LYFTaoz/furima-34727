class User < ApplicationRecord
  has_many :items
  has_many :buys

  validate :nicknaname, presence: true
  validate :email, presence: true
  validate :encrypted_passward, presence: true
  validate :family_name, presence: true
  validate :fast_name, presence: true
  validate :family_name_kana, presence: true
  validate :fast_name_kana, presence: true
  validate :birth_day, presence: true
end
