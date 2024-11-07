require 'rails_helper'

describe User do
  context 'validations' do
    let(:user) { User.new(name: '') }
    # let
    # factory bot
    # expect

    it 'has a valid name' do
      expect(user.name).to eq('')
    end
    end
  end