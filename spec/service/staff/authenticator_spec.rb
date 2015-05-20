require 'spec_helper'

describe Staff::Authenticator do
   describe '#authenticate' do
      example 'return true when input corrent password' do
         m = build(:staff_member)
         expect(Staff::Authenticator.new(m).authenticate('pw')).to be_truthy
      end
   end
end