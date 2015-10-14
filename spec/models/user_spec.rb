require 'rails_helper'

describe User, type: :model do

  let(:user)    { User.create }
  let(:review)  { Review.create }

  it "has many reviews" do
    expect(user).to have_many :reviews
  end

  it "has many reviewed restaurants" do
    expect(user).to have_many :reviewed_restaurants
  end

end
