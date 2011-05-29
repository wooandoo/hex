require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require "wo_oo/util/hex"

include WOoo::Util

describe HexUtil do
  context "HEX 8" do
    before(:all) do
      @data = {
        1 => "01",
        11 => "0B",
        15 => "0F",
        16 => "10",
        255 => "FF"
      }
    end
    
    
    it "convert integer to hex" do
      @data.each do |byte, hex|
        HexUtil.to_hex8(byte).should == hex
      end
    end



    it "convert array of integers to array of hex" do
      values = @data.keys
      expected_results = @data.values

      HexUtil.to_hex8(values).should == expected_results
    end



    it "convert string to hex" do
      @data.map{ |key, value| [key.to_s, value] }.each do |byte, hex|
        HexUtil.to_hex8(byte).should == hex
      end
    end



    it "convert hex to integer" do
      @data.each do |byte, hex|
        HexUtil.to_i(hex).should == byte
      end
    end
    
    
    
    it "convert array of hex to array of integer" do
      values = @data.values
      expected_results = @data.keys
      
      HexUtil.to_i(values).should == expected_results
    end
    
    
    
    it "convert string of hex to array of integer" do
      values = @data.values.join
      expected_results = @data.keys
      
      HexUtil.to_i(values, HexUtil::HEX8).should == expected_results
    end
  end
  
  
  # ----------------------------------------------------------------
  # ----------------------------------------------------------------
  
  
  context "HEX 16" do
    before(:all) do
      @data = {
        1 => "0001",
        11 => "000B",
        15 => "000F",
        16 => "0010",
        255 => "00FF",
        256 => "0100",
        437 => "01B5",
        512 => "0200",
        4096 => "1000",
        20284 => "4F3C",
        65535 => "FFFF"
      }
    end
    
    it "convert integer to hex" do
      @data.each do |byte, hex|
        HexUtil.to_hex16(byte).should == hex
      end
    end



    it "convert array of integers to array of hex" do
      values = @data.keys
      expected_results = @data.values

      HexUtil.to_hex16(values).should == expected_results
    end



    it "convert string to hex" do
      @data.map{ |key, value| [key.to_s, value] }.each do |byte, hex|
        HexUtil.to_hex16(byte).should == hex
      end
    end



    it "convert hex to integer" do
      @data.each do |byte, hex|
        HexUtil.to_i(hex).should == byte
      end
    end
    
    
    
    it "convert array of hex to array of integer" do
      values = @data.values
      expected_results = @data.keys
      
      HexUtil.to_i(values).should == expected_results
    end
    
    
    
    it "convert string of hex to array of integer" do
      values = @data.values.join
      expected_results = @data.keys
      
      HexUtil.to_i(values, HexUtil::HEX16).should == expected_results
    end
  end
  
  
  # ----------------------------------------------------------------
  # ----------------------------------------------------------------
  
  
  context "HEX 32" do
    before(:all) do
      @data = {
        1 =>          "00000001",
        11 =>         "0000000B",
        15 =>         "0000000F",
        16 =>         "00000010",
        255 =>        "000000FF",
        256 =>        "00000100",
        437 =>        "000001B5",
        512 =>        "00000200",
        4096 =>       "00001000",
        20284 =>      "00004F3C",
        65535 =>      "0000FFFF",
        65536 =>      "00010000",
        65567 =>      "0001001F",
        3833132 =>    "003A7D2C",
        4294967295 => "FFFFFFFF"
      }
    end
    
    it "convert integer to hex" do
      @data.each do |byte, hex|
        HexUtil.to_hex32(byte).should == hex
      end
    end



    it "convert array of integers to array of hex" do
      values = @data.keys
      expected_results = @data.values

      HexUtil.to_hex32(values).should == expected_results
    end



    it "convert string to hex" do
      @data.map{ |key, value| [key.to_s, value] }.each do |byte, hex|
        HexUtil.to_hex32(byte).should == hex
      end
    end



    it "convert hex to integer" do
      @data.each do |byte, hex|
        HexUtil.to_i(hex).should == byte
      end
    end
    
    
    
    it "convert array of hex to array of integer" do
      values = @data.values
      expected_results = @data.keys
      
      HexUtil.to_i(values).should == expected_results
    end
    
    
    
    it "convert string of hex to array of integer" do
      values = @data.values.join
      expected_results = @data.keys
      
      HexUtil.to_i(values, HexUtil::HEX32).should == expected_results
    end
  end
end