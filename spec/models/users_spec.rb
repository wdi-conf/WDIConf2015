require 'rails_helper'

describe 'User' do

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

  it 'is valid with all fields filled in' do
    user = User.new(
        name: 'Jane Tester',
        email: 'tester@example.com',
        bio: 'good lass',
        admin: 'false'
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

  it 'is invalid without a bio' do
    user = User.new(bio: nil)
    user.valid?
    expect(user.errors[:bio]).to include("can't be blank")
  end

  it 'is invalid without admin defined' do
    event = Event.new(admin: nil)
    event.valid?
    expect(event.errors[:admin]).to include("can't be blank")
  end

end

create_table "users", force: :cascade do |t|
  t.string  "name",            limit: 50, null: false
  t.string  "email",                      null: false
  t.string  "password_digest",            null: false
  t.text    "bio"
  t.boolean "admin"