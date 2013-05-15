InDesign Document Database (InDDB) Tool
=============

Description
-------
This is an AppleScript for manipulation of objects in all open documents at once utilising UUID's.
We (the studio I work in) need this script because we do language localisation of print catalogues/broschures.
Our workflow is the following:
We start out by having an basic version of a broschure (usually the german one, where the layout if finalised in) and after "finishing" it 
we duplicate this document for every language. So we usually end up with 20 documents. And if we have to do changes in them we needed a easy 
to work with solution, and this script – at the moment – is it ...

The manipulation of objects in all open documents is achieved by assigning a Universally Unique Identifier (https://en.wikipedia.org/wiki/UUID) 
to every page item so that they are "practically unique" for the broschure (not unique in the sense of a real database) and the script can 
access them in every open document. These UUID's are stored in the script label which every page item can have. There is a panel which can 
show you the script label (Choose Window > Utilities > Script Label). The reason I choose to assign my own ID's instead of using the object
ID's that InDesign is using is that they are unreliable (in the sense that if you add a frame in one document but not in others and you distribute 
new page items to the documents the ID's become out of sync).

Once you assigned the UUID's to the page items you can manipulate frames, lines, etc. in the open documents. Like:

* "Alle Objekte im Dokument taggen!" -- tag all objects in the document with a UUID
* "Alle Objekte im Dokument enttaggen!" -- untag all objects in the document
* "Alle UUIDs aus Quelldokument übertragen" -- this function is used to tag documents that have no UUIDs, but is more like a legacy-thing old docs that don't use these UUID's from the projects start, I don't document the functionality here, which basically means, normally you don't use this :)
* "Ausgewählte Objekte taggen" -- only tag the selected objects in the document with a UUID, is used before distributing objects to other documents (so that they stay in sync!)
* "Ausgewählte Objekte enttaggen" -- untag the selected objects in the document
* "Ausgewählte Objekte löschen" -- delete the selected objects in every open document
* "Ausgewählte Objekte kopieren" -- distribute the selected objects to every open document
* "Ausgewählte Objekte bewegen (x,y)" -- move (x,y) the selected objects on the same layer in every open document
* "Ausgewählte Objekte verschieben (Ebene)" -- move the selected objects to another layer in every open document
* "Ausgewählte Objekte transformieren (beta)" -- Is not even beta, more like pre-alpha :) allows for changing the attributes of the selected objects in every document. at the moment only position and size work properly, not even I use this function at the moment ...


Of course you have to have some Documents open to use this script.
After executing the script in InDesign you'll be presented with a "function" dialog.
This is where you can choose from one of the functions above.
After that it depends on the function you chose.



Disclaimer
-----
	Use my scripts at your own risk! I am not responsible for any damages to your InDesign Documents!
	With my Repositories I just want to give the world back what I have got from others who share their code – 
    usable, productive AppleScripts!

Contributing
------------
Want to contribute? Great! You sure know what to do, I am new to Github so I don't know if I am doing this right :)

File-Formats
-----------
    Normally, in InDesign, I use the *.scpt format because it it precompiled but at the same time contains the code and is viewable via QuickLook. 
    I'm also commiting an *.applescript file, just because it it readable (If you just want to take a look) on github and the precompiled is not.
    Both types are usually commited together – always – if not, then it wasn't necessary.
    
Localization
-----------
    At the moment the script is mixed, english and german. with the documentation beeing mostly in english but most strings are in german.
    As far as I researched it is not trivial to localize AppleScripts. We (the studio I work in) use these scripts

Installation
-----------
	My scripts should work in a variety of InDesign Versions which is wy I use the Application ID instead of the name.
	But they should definitly work in the latest InDesign Version. We update our Adobe apps as soon as a new version comes out.
    Put the file in the application folder "Adobe InDesign CSx" > "Scripts" > "Scripts Panel"

Usage
-----
    open InDesign and some documents and start the script from the "Scripts Panel"
