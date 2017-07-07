require "rails_helper"

RSpec.describe Relationship, :type => :model do
  context "create validations" do
    it "allows ralations between individuals like parent and child"
    it "allows relations between individuals like marriage"
    it "not allows relations between individuals like marriage between parent and child"
    it "not allows relations between individuals like parent and child between marriage cuples"
    it "not allows relations between individuals like marriage between more then 2 individuals"
  end
end
