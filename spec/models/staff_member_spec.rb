require 'rails_helper'

RSpec.describe StaffMember, :type => :model do
  describe '#password=' do
   example 'when given string,hashed_password is 60 length hashed text' do
      member = StaffMember.new
      member.password = 'otinpomilk'
      expect(member.hashed_password).to be_kind_of(String)
      expect(member.hashed_password.size).to eq(60)
   end

   example 'when given nil,hashed_password is nil' do
      member = StaffMember.new
      member.password = nil
      expect(member.hashed_password).to be_nil
   end
  end
end
