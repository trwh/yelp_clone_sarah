require 'rails_helper'

describe Review, :type => :model do

  let(:review)  { Review.create }
  let(:user)    { User.create }

  it "is invalid if the rating is more than 5" do
    review_10 = Review.new(rating: 10)
    expect(review_10).to have(1).error_on(:rating)
  end

  it "is expected to belong to user" do
    expect(review).to belong_to :user
  end

end