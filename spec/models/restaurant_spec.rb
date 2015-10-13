require 'spec_helper'

  describe Restaurant, type: :model do
    it { is_expected.to have_many :reviews }
  end

  describe Review, type: :model do
    it { is_expected.to belong_to :restaurant }
  end
