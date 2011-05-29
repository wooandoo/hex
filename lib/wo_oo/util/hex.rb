require "pp"

module WOoo
  module Util
    # HexUtil convert to HEX 8, 16 or 32
    # 
    # > WOoo::Util::HexUtil.to_hex8(11)
    # "0B"
    # 
    # > WOoo::Util::HexUtil.to_hex8("11")
    # "0B"
    # 
    # > WOoo::Util::HexUtil.to_hex8([11, 16, 255])
    # ["0B", "10", "FF"]
    # 
    # > WOoo::Util::HexUtil.to_i("0B")
    # 11
    # 
    # > WOoo::Util::HexUtil.to_i(["0B", "10", "FF"])
    # [11, 16, 255]
    # 
    module HexUtil
      HEX8   = 0
      HEX16  = 1
      HEX32  = 2
      
      SPRINTF_CONFIGURATION = ["%.2x", "%.4x", "%.8x"]
      
      def self.to_hex8(values)
        case values
        when Integer
          to_hex(values, HEX8)
        when Array
          values.map { |value| to_hex8(value) }
        when String
           to_hex(values.to_i, HEX8)
        end
      end
      
      # ----------------------------------------------------------------
      
      def self.to_hex16(values)
        case values
        when Integer
          to_hex(values, HEX16)
        when Array
          values.map { |value| to_hex16(value) }
        when String
           to_hex(values.to_i, HEX16)
        end
      end
      
      # ----------------------------------------------------------------
      
      def self.to_hex32(values)
        case values
        when Integer
          to_hex(values, HEX32)
        when Array
          values.map { |value| to_hex32(value) }
        when String
           to_hex(values.to_i, HEX32)
        end
      end
      
      # ----------------------------------------------------------------
      
      def self.to_hex(value, size = HEX8)
        sprintf(SPRINTF_CONFIGURATION[size], value).upcase
      end
      
      # ----------------------------------------------------------------
      
      def self.to_i(values, size = nil)
        if !size.nil? && values.kind_of?(String)
          case size
          when HEX8
            formatted_values = values.scan(/\w\w/) if values.size > 2
          when HEX16
            formatted_values = values.scan(/\w\w\w\w/) if values.size > 4
          when HEX32
            formatted_values = values.scan(/\w\w\w\w\w\w\w\w/) if values.size > 8
          end
        else
          formatted_values = values
        end
                
        case formatted_values
        when String
          formatted_values.downcase.to_i(16)
        when Array
          formatted_values.map { |value| to_i(value) }
        end
      end
    end
  end
end