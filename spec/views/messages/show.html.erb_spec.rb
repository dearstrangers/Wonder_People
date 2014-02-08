require 'spec_helper'

describe "messages/show" do
  before(:each) do
    @message = assign(:message, stub_model(Message,
      :messager_email => "Messager Email",
      :topic => "Topic",
      :message_id => 1,
      :content => "MyText",
      :replied => false,
      :admin_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Messager Email/)
    rendered.should match(/Topic/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/2/)
  end
end
