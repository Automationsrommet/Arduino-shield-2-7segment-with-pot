# Arduino-shield-2-7segment-with-pot
openscad code for hardware and layout for single sided pcb


So this is my first attempt at creating single-sided PCB layout using OpenScad
I teach electronics at high school in northern norway and we had lots of 7segment displays in stock.
This is the type as seen in the model with 5 pins at top and 5 pins bottom side, the middle one being common cathone and the rest segment anodes.

This circuit then combines introducing students to PCB etching and soldering and later programming arduinos to cruedly display numbers.
It does so poorly, as soldering the pot and 7segmens ends up being on the wrong side of the board with no copper pads. 
The two students who managed to solder 7segments top side suspended 3mm from board melted the plastic sides and the result ended up looking less than pretty.
 
 Contents:
 OpenScad code for model with 2x7segment displays.
 OpenScad code for model with 2x7segment displays just leaving out one set.
 OpenScad code for copper layout for both of the above models. Click "Tow view" and "orthogonal" projection, hide axis and export as image. I later used MS-Paint to save as monochrome bitmap, and MS-Word to print on plastic sheets for UV lighting of photosensitive pcb's.
Next years (2022-2023) code for copper layout for both of the above models. Click "Tow view" and "orthogonal" projection, hide axis and export as image. I later used MS-Paint to save as monochrome bitmap, and MS-Word to print on plastic sheets for UV lighting of photosensitive pcb's.
 Gcode that we used on Prusa Mini to etch the cards with our chemical "finetse chrystal" that works best around 50 degrees celsius, active lines should be duplicated for longer workingperiods.
 Arduino IDE code for using analog in 5 to activate different segments to make numbers. A good way to allow students to get the feel for hardware programming in my opinion.
 
 
 So next year we'll try a similar project, but with different 7segment pinout, taking ease of soldering into account, adding 3D-printed pin spacers and perhaps even tidy up my openScad code into a library of some sort. Stay tuned if you are into this sort of thing.
 Sveinar
