require 'rails_helper'

RSpec.describe "documents/show", :type => :view do
  before(:each) do
    @document = assign(:document, Document.create!(
      :type => 1,
      :url => "Url",
      :md5 => "Md5",
      :password => "Password",
      :title => "Title",
      :description => "Description",
      :access_type => 2,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Md5/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
