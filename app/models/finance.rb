class Finance < ActiveRecord::Base
	attr_accessible :time,:money,:comment
	belongs_to :user
end

# == Schema Information
#
# Table name: finances
#
#  id         :integer         not null, primary key
#  time       :datetime
#  money      :integer
#  comment    :text
#  created_at :datetime
#  updated_at :datetime
#

