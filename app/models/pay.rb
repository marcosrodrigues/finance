class Pay < ActiveRecord::Base
  belongs_to :account
  belongs_to :favored
end
