Title: NFC My Phone
Date: 2016-02-19 22:05
Category: Electronics
Status: draft

The other day, while browsing my news feed, I saw that Adafruit now has some rings(as in jewlery) with embeded NFC tags. I have been wanting to play with NFC for a bit, in order to help automate my phone, and possibly other tasks, so I decided to pick one up. After a quick trip to the local jeweler to get all my fingers measured for ring size, and a few charts to convert sizes, I went ahead and ordered. For good effect, and something to play with, I also ordered some hardware to read/write NFC tags using arduino or similar hardware, and a small pack of tags to play with.

Upon prompt arrival of my delivery, I was way to busy to play with my new hardware. But I was able to try on the ring, I wear it on my left index finger right now, and it fits fine and snug. Initially, all I did was read and write a few of the non-ring tags I got, usign my phone and the NFC Tools app I had installed ages ago to see what I could see. But once I was happy with some basic usage, I wanted to enable a feature that Adafruit mentioned in a link on their product page: Automatic Phone Unlocking.

To start with the unlock, I tried to follow the Adafruit instruction, but quickly decided to bail on them. Mostly because I had to buy an app, but also because it was very fiddly, to the point of installation order mattering. After some digging I found a better way, built into Android, that needed no extra apps. First up we enable Smart Locks in security, and then add the NFC ring to trusted apps. This allows the phone to unlock when the ring is in range, which works great when I wake it up from sleep using the left hand. Unfortunatly this left my ring randomly activatign the Tags app on the phone, so a quick jump into the Apps setting and we can disable the Tags app. Luckily this does not disable any other functionality, and reading tags with a URL still open in the browser.

My phone still unlocks with a pattern if I do not have the ring around, but if I am wearing it and press the power button to wake up the device, it immediatly lets me in.
