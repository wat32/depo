require 'rails_helper'

RSpec.describe Document, :type => :model do

  it "Has a valid Documents Factory" do

    expect(FactoryGirl.build(:document)).to be_valid

  end

end
