require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Example do
  it "should define the logger method to access a global Logger instance" do
    Example.should respond_to(:logger)
    Example.logger.should be_an_instance_of(Logger)
    Example.logger.object_id.should == @logger.object_id
  end
end
