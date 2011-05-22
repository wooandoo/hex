require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require "wo_oo/electronics/intel_hex_file"
require "tmpdir"

SAMPLE_HEX_DATA = "214601360121470136007EFE09D219012146017EB7C20001FF5F160021480119194E79234623965778239EDA3F01B2CA3F0156702B5E712B722B732146013421"
SAMPLE_BIN_DATA = [33, 70, 1, 54, 1, 33, 71, 1, 54, 0, 126, 254, 9, 210, 25, 1, 33, 70, 1, 126, 183, 194, 0, 1, 255, 95, 22, 0, 33, 72, 1, 25, 25, 78, 121, 35, 70, 35, 150, 87, 120, 35, 158, 218, 63, 1, 178, 202, 63, 1, 86, 112, 43, 94, 113, 43, 114, 43, 115, 33, 70, 1, 52, 33]

describe WOoo::Util::HexUtil do
  before(:all) do
    @sample_file_path = File.expand_path(File.dirname(__FILE__) + "/resources/wikipedia_sample.hex")
  end
  
  
  
  before(:each) do
    @temp_file_path = File.join(Dir.tmpdir, "output.hex")
  end
  
  
  
  after(:each) do
    File.delete(@temp_file_path) if File.exists?(@temp_file_path)
  end
  
  
  
  it "loads an intel hex file 8-bits" do
    WOoo::Electronics::IntelHexFile.read(@sample_file_path).should == SAMPLE_BIN_DATA
  end
  
  
  
  it "writes to an intel hex file 8-bits" do
    start_address = 256
    WOoo::Electronics::IntelHexFile.write(@temp_file_path, SAMPLE_BIN_DATA, start_address)
    
    content = File.read(@temp_file_path)
    expected_content = File.read(@sample_file_path)
    
    content.should == expected_content
  end
end