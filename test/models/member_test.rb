require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  
  describe "validations" do
    it "has a valid factory" do
      expect(FactoryGirl.create(:member)).to be_valid
    end
    
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    
  end
end 