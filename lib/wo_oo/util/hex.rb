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
      HEX_8   = 0
      HEX_16  = 1
      HEX_32  = 2
      
      SPRINTF_CONFIGURATION = ["%.2x", "%.4x", "%.8x"]
      
      def self.to_hex8(values)
        case values
        when Integer
          to_hex(values, HEX_8)
        when Array
          values.map { |value| to_hex8(value) }
        when String
           to_hex(values.to_i, HEX_8)
        end
      end
      
      # ----------------------------------------------------------------
      
      def self.to_hex16(values)
        case values
        when Integer
          to_hex(values, HEX_16)
        when Array
          values.map { |value| to_hex16(value) }
        when String
           to_hex(values.to_i, HEX_16)
        end
      end
      
      # ----------------------------------------------------------------
      
      def self.to_hex32(values)
        case values
        when Integer
          to_hex(values, HEX_32)
        when Array
          values.map { |value| to_hex32(value) }
        when String
           to_hex(values.to_i, HEX_32)
        end
      end
      
      # ----------------------------------------------------------------
      
      def self.to_hex(value, size = HEX_8)
        sprintf(SPRINTF_CONFIGURATION[size], value).upcase
      end
      
      # ----------------------------------------------------------------
      
      def self.to_i(values)
        case values
        when String
          values.downcase.to_i(16)
        when Array
          values.map { |value| to_i(value) }
        end
      end
    end
  end
end