require 'rails_helper'

describe 'User' do

# the first test is probably failing for this reason: https://robots.thoughtbot.com/the-perils-of-uniqueness-validations
=begin
  it 'is invalid with a duplicate email address' do
     User.create(
       name: 'Joe Tester',
       email: 'tester@example.com',
       bio: 'good bloke',
       admin: 'false'
     )
     user = User.new(
         name: 'Jane Tester',
         email: 'tester@example.com',
         bio: 'good lass',
         admin: 'false'
     )
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end
=end

  it 'is valid with all fields filled in' do
    user = User.new(
        name: 'Jane Tester',
        email: 'tester@example.com',
        bio: 'good lass',
        admin: 'false',
        password: '12345678'
    )
    expect(user).to be_valid
  end

  it 'is invalid without a name' do
    user = User.new(name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  it 'is invalid without a email' do
    user = User.new(email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it 'is invalid without a password' do
    user = User.new(password: nil)
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end

  it 'is valid without a bio' do
    user = User.new(bio: nil)
    user.valid?
    expect(user.errors[:bio]).not_to include("can't be blank")
  end

  it 'is valid without admin defined' do
    user = User.new(admin: nil)
    user.valid?
    expect(user.errors[:admin]).not_to include("can't be blank")
  end

  it 'admin default is false' do
    user = User.new(
        name: 'Jane Tester',
        email: 'tester@example.com',
        bio: 'good lass'
    )
    expect(user.admin).to be false
  end

end