require "rails_helper"

RSpec.describe User, :type => :model do
  let(:user) { build(:user) }
  context "with valid attributes" do
    it 'returns the user object with custom attributes' do
      expect(user.name).to eq("test_user")
      expect(user.phone_number).to eq("0000000000")
      expect(user.email).to eq("test@mail.com")
      expect(user.shoe_size).to eq(nil)
      expect(user.nickname).to eq(nil)

      user.shoe_size = "9"
      user.nickname = "Harry"

      expect(user.shoe_size).to eq("9")
      expect(user.nickname).to eq("Harry")
    end
  end

  context "with invalid attributes" do
    it "throws an NoMethodError" do
      expect{ user.tags}.to raise_error(NoMethodError)
    end
  end
end
