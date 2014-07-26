require 'spec_helper'

describe Plant do
  let(:user) { FactoryGirl.create(:user) }
  before { @plant = user.plants.build(common_name: "Whatever", sci_name: "Lorem ipsum") }

  subject { @plant }

  it { should respond_to(:common_name) }
  it { should respond_to(:sci_name) }
  it { should respond_to(:user_id) }
  its(:user) { should eq user }

  it { should be_valid }

  describe "when common_name is not present" do
    before { @plant.common_name = " " }
    it { should_not be_valid }
  end

  describe "with common_name that is too long" do
    before { @plant.common_name = "a" * 81 }
    it { should_not be_valid }
  end

  describe "when sci_name is not present" do
    before { @plant.sci_name = " " }
    it { should_not be_valid }
  end

  describe "with sci_name that is too long" do
    before { @plant.sci_name = "a" * 81 }
    it { should_not be_valid }
  end

  describe "when user_id is not present" do
    before { @plant.user_id = nil }
    it { should_not be_valid }
  end

  describe "with description that is too long" do
    before { @plant.description = "a" * 3001 }
    it { should_not be_valid }
  end

  describe "with sources that is too long" do
    before { @plant.sources = "a" * 501 }
    it { should_not be_valid }
  end
end
