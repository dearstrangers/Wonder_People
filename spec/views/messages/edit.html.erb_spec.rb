require 'spec_helper'

describe "messages/edit" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :messager_email => "MyString",
      :topic => "MyString",
      :message_id => 1,
      :content => "MyText",
      :replied => false,
      :admin_id => 1
    ))
  end

  it "renders the edit message form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", message_path(@message), "post" do
      assert_select "input#message_messager_email[name=?]", "message[messager_email]"
      assert_select "input#message_topic[name=?]", "message[topic]"
      assert_select "input#message_message_id[name=?]", "message[message_id]"
      assert_select "textarea#message_content[name=?]", "message[content]"
      assert_select "input#message_replied[name=?]", "message[replied]"
      assert_select "input#message_admin_id[name=?]", "message[admin_id]"
    end
  end
end
