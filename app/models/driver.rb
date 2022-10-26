# == Schema Information
#
# Table name: drivers
#
#  id                        :integer          not null, primary key
#  name                      :string
#  nationality               :string
#  year_start                :integer
#  number_podiums            :integer
#  number_world_championship :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#
class Driver < ApplicationRecord
end
