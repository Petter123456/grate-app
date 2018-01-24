require 'rails_helper'

RSpec.feature "UserViewsTheirProfiles", type: :feature do

let!(:user) do # let method creates a variable based on symbol
  User.create(
    name: "Rube goldberg",
    email: "machine@example.com",
    code_school: CodeSchool.create(name: 'Wyncode')
  )
end

  it "display their name" do #here we are checking content is the the same as above
    visit user_path(user)
    expect(page).to have_content user.name
  end
end
