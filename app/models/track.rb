# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  country    :string
#  length     :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Track < ApplicationRecord
end
