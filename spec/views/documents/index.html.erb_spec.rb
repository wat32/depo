require 'rails_helper'

RSpec.describe "documents/index", :type => :view do
  before(:each) do
    assign(:documents, [
      Document.create!(
        :type => 1,
        :url => "Url",
        :md5 => "Md5",
        :password => "Password",
        :title => "Title",
        :description => "Description",
        :access_type => 2,
        :user => nil
      ),
      Document.create!(
        :type => 1,
        :url => "Url",
        :md5 => "Md5",
        :password => "Password",
        :title => "Title",
        :description => "Description",
        :access_type => 2,
        :user => nil
      )
    ])
  end

  it "renders a list of documents" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Md5".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
