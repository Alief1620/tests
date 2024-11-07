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

    #it do
    #user = User.new(name: '')
    #user.valid?
    #user.errors[:name].should_not be_empty

    end
  end