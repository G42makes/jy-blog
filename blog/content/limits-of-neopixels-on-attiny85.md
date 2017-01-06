Title: The Limits of NeoPixels on ATTiny85 Chips
Date: 2015-12-06 21:29
Category: Electronics

In the spirit of the season I wanted to replace the simple incandescent bulbs in a medium sized plug in star that I've had in my window with a strip of NeoPixels(RGB addressable LEDs). The strip I had around was about 1m long and 144 LEDs per meter. Interestingly this was basically the exact length that I needed.

Opening and installing was fine, but then I needed to control and power them. My first attempts used an Adafruit Trinket, a small board with USB and an ATTiny85 onboard. Using the default strand test, I just updated it to 144 LEDs and tested: nothing. Tried it with a larger Arduino board and it works fine, but not on the ATTiny85. After some guesses and tests I figured out that the maximum number of LEDs that I can run from a ATTiny85 is 110. That will not cut it with this. A quick test with a bare ATTiny85 showed that this limit is not related to the bootloader used, so I think it's memory. I could not find any suggestions on saving memory aside from generating each string on the fly, but I don't know that I can do that without re-writing the library completely, and I don't feel like doing that for a decoration.

So for now my star runs with a large Arduino behind it. I think I'll look into a slightly better micro board and see if I can make this star USB powered yet.
