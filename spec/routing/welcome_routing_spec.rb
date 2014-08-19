require "rails_helper"

describe "welcome routing" do
  it "routes get / => welcome#index" do
    expect(get: "/").to route_to(
      controller: "welcome",
      action: "index")
  end
end
