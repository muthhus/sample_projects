shared_examples_for :spec_failing_in_before do
  before do
    sleep 2
    raise "bombed!!! something went wrong"
  end

  it "should pass addition tests except for before" do
    (10 + 5).should == 15
  end
end
