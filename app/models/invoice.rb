class Invoice < ActiveRecord::Base
  belongs_to :account
  has_many :transaction
end
