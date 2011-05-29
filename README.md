= HEX

== HEX conversion

HexUtil convert to HEX 8, 16 or 32

	include WOoo::Util
	
	> HexUtil.to_hex8(11)
	"0B"

	> HexUtil.to_hex8("11")
	"0B"

	> HexUtil.to_hex8([11, 16, 255])
	["0B", "10", "FF"]

	> HexUtil.to_i("0B")
	11

	> HexUtil.to_i(["0B", "10", "FF"])
	[11, 16, 255]
	
	> HexUtil.to_i("0B10FF", HexUtil::HEX8)
	[11, 16, 255]



== INTEL Hex file

Read and write Intel HEX file.

See [[http://en.wikipedia.org/wiki/Intel_hex]].



= Contributing to hex
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.



= Copyright

Copyright (c) 2011 Frédéric Mascaro. See LICENSE.txt for
further details.