require 'rails_helper'

RSpec.describe "documents/edit", :type => :view do
  before(:each) do
    @document = assign(:document, Document.create!(
      :type => 1,
      :url => "MyString",
      :md5 => "MyString",
      :password => "MyString",
      :title => "MyString",
      :description => "MyString",
      :access_type => 1,
      :user => nil
    ))
  end

  it "renders the edit document form" do
    render

    assert_select "form[action=?][method=?]", document_path(@document), "post" do

      assert_select "input#document_type[name=?]", "document[type]"

      assert_select "input#document_url[name=?]", "document[url]"

      assert_select "input#document_md5[name=?]", "document[md5]"

      assert_select "input#document_password[name=?]", "document[password]"

      assert_select "input#document_title[name=?]", "document[title]"

      assert_select "input#document_description[name=?]", "document[description]"

      assert_select "input#document_access_type[name=?]", "document[access_type]"

      assert_select "input#document_user_id[name=?]", "document[user_id]"
    end
  end
end
