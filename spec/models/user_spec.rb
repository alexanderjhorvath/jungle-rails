require 'rails_helper'

RSpec.describe User, type: :model, js: true do
  subject {
    described_class.new(email: 'bob123@hotmail.com', password: 'password12345', password_confirmation: 'password12345'
      )}

  describe 'User login is valid' do
    it 'is a valid login' do
      expect(subject).to be_valid
    end

    it 'is without a password' do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it 'is without a password confirmation' do
      subject.password_confirmation = nil
      expect(subject).to_not be_valid
    end

    it 'is without matching passwords' do
      subject.password_confirmation = 'anotherpassword'
      expect(subject).to_not be_valid
    end

    it 'is without an email' do
      subject.email = 'nil'
      expect(subject).to_not be_valid
    end

    it 'is without a unique email' do
      subject.email = 'test@test.com'
      expect(subject).to_not be_valid
    end
  end
end
