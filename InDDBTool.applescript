-- InDDBTool for InDesign
-- version 2.1

-- created by medul6, Michael Heck, 2013

-- open sourced on May 15th, 2013 on Github > check the LICENSE.txt and README.md in the repository for detailed information
-- https://github.com/medul6/indesign-InDDB-tool

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее
-- use statements
use AppleScript
use framework "Foundation"
use scripting additions

--properties!
property UUID : "UUID"
property functionChoice : {"AusgewКhlte Objekte taggen!"}
property chosenLayer : missing value
property chosenLayerRepeat : missing value
property allPageItems : {}
property allPageItemsRepeat : {}
property activeDocument : missing value
property openDocuments : missing value
property otherDocuments : missing value
property deduplicatedLayerNames : missing value
property layerListActiveDoc : missing value
property layerNameListActiveDoc : missing value
property stopBool : false
property theSelection : missing value
property myGeometry : missing value
property myLayer : missing value
property xValue : missing value
property yValue : missing value

property activeWindow : missing value
property otherWindows : missing value
property openWindows : missing value
property activePage : missing value
property theZoom : missing value



-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

tell application id "com.adobe.InDesign"
	
	-- set up some informations from the current state as variables
	set my activeDocument to active document
	set my openDocuments to every document
	set my otherDocuments to every document whose id is not activeDocument's id
	set my layerListActiveDoc to every layer of activeDocument
	set my stopBool to false
	set {xValue, yValue} to {0, 0}
	set theOriginalSelection to selection of activeDocument -- this should used by other functions, but I had no time to do that, though, there is nothing really wrong here ...
	set activeWindow to active window
	set openWindows to every window
	set otherWindows to every window whose parent's id is not activeWindow's parent's id
	--set theZoom to zoom percentage of active window
	
	
	-- initialize some lists (to be filled in the next two repeat loops)
	set layerList to {}
	set layerNameList to {}
	set layerNameListActiveDoc to {}
	
	-- fills the layerList with every layer from every document (but there might be duplicates in it)
	repeat with i from 1 to count openDocuments
		set layerList to layerList & every layer of item i of openDocuments
	end repeat
	
	-- creates a new list but with readable names instead of IDs (to present them later to the user)
	repeat with i from 1 to count layerList
		set layerNameList to layerNameList & name of item i of layerList
	end repeat
	repeat with i from 1 to count layerListActiveDoc
		set layerNameListActiveDoc to layerNameListActiveDoc & name of item i of layerListActiveDoc
	end repeat
	
	-- the deduplicting function removes the duplicates from the readable names list
	deduplicator(reverse of layerNameList) of me
	
	-- this will display a dialog in which the user can select the desired function of this tool
	my functionChooser()
	--my giveAllPageItemsAnUUID()
	
	if stopBool is true then
		--displayTheEnd() of me
		--my displayNotificationShort("Fertig!", ((item 1 of functionChoice) as string))
		my displayNotificationLong("Fertig!", ((item 1 of functionChoice) as string), ((count theOriginalSelection) as string) & " Objekt(e)")
	end if
	
	
end tell

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on UUIDGenerator()
	--set my UUID to do shell script "uuidgen"
	set my UUID to current application's NSUUID's UUID()'s UUIDString() as string
end UUIDGenerator

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on jumpToFirstUUIDDuplicate()
	tell application id "com.adobe.InDesign"
		set my allPageItems to every page item of active document
		
		repeat with x from 1 to count my allPageItems -- this iterates through all UUIDs
			set repeatUUID to label of my allPageItems's item x
			set duplicateRepeatUUID to (every page item of active document whose label is equal to repeatUUID)
			if (count duplicateRepeatUUID) is greater than 1 then
				--beep (1)
				set selection of active document to my allPageItems's item x
				return
			end if
		end repeat
	end tell
	
end jumpToFirstUUIDDuplicate

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on setTheSelection()
	tell application id "com.adobe.InDesign"
		
		set my activePage to name of active page of active window
		set my theSelection to selection of activeDocument
		
		
		if (count of theSelection) < 1 then
			display dialog "Es ist nichts ausgewКhlt!" & return & "Bitte EIN Objekt auswКhlen." buttons "OK" default button "OK"
			set my stopBool to false
		else if (count of theSelection) > 1 then
			display dialog "Es sind mehrere Objekte ausgewКhlt!" & return & "Bitte EIN Objekt auswКhlen." buttons "OK" default button "OK"
			set my stopBool to false
		else
			--set my theSelection to every item of selection of activeDocument
			--repeat with x from 1 to count my theSelection
			set my UUID to label of item 1 of my theSelection
			repeat with x from 1 to count openWindows -- this iterates through the open windows (one or more)
				set active page of openWindows's item x to page activePage of parent of openWindows's item x
				tell openWindows's item x
					--select nothing
					zoom given fit spread
				end tell
				
			end repeat
			
			repeat with y from 1 to count my openDocuments
				tell openDocuments's item y
					--select (every page item of my openDocuments's item y whose label contains my UUID)
					--set selection of openDocuments's item y to first item of every page item
					set selection to (every page item of my openDocuments's item y whose label contains my UUID)
				end tell
			end repeat
			--end repeat
			set my stopBool to true
		end if
		
		
	end tell
end setTheSelection

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on giveAllPageItemsAnUUID()
	tell application id "com.adobe.InDesign"
		set my allPageItems to all page items of activeDocument --ich glaube das hier sind ALLE Objekte!
		
		repeat with i from 1 to count my allPageItems
			my UUIDGenerator()
			set label of item i of my allPageItems to my UUID
		end repeat
	end tell
	
	set my stopBool to true
end giveAllPageItemsAnUUID

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on giveAllPageItemsOnLayerAnUUID()
	tell application id "com.adobe.InDesign"
		
		set buttonName to functionChoice & "!" as string
		set chosenLayer to choose from list (reverse of deduplicatedLayerNames) default items chosenLayer with prompt "Ebene wКhlen:" OK button name buttonName with multiple selections allowed
		
		if the result is not false then
			repeat with i from 1 to count my chosenLayer
				set my chosenLayerRepeat to item i of the chosenLayer
				
				set my allPageItemsRepeat to (every item of all page items of activeDocument whose name of its item layer is chosenLayerRepeat)
				
				repeat with i from 1 to count my allPageItemsRepeat
					my UUIDGenerator()
					set label of item i of my allPageItemsRepeat to my UUID
				end repeat
				
			end repeat
			set my stopBool to true
		end if
		
	end tell
	
	set my stopBool to true
end giveAllPageItemsOnLayerAnUUID


-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on deleteTheSelectedObjects()
	tell application id "com.adobe.InDesign"
		
		set theSelection to selection of activeDocument
		if (count of theSelection) < 1 then
			display dialog "Es ist nichts ausgewКhlt!" & return & "Bitte ein oder mehrere Objekte auswКhlen." buttons "OK" default button "OK"
			set my stopBool to false
		else
			set my theSelection to every item of selection of activeDocument
			repeat with x from 1 to count my theSelection
				set my UUID to label of item x of my theSelection
				repeat with y from 1 to count my openDocuments
					try
						delete (every page item of my openDocuments's item y whose label contains my UUID)
					end try
				end repeat
			end repeat
			set my stopBool to true
		end if
	end tell
end deleteTheSelectedObjects

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

--on transferUUIDsFromATaggedSourceDocumentToATargetDocument()
--	tell application id "com.adobe.InDesign"
--		set allPageItemsSource to all page items of activeDocument
--		set allPageItemsTarget to all page items of otherDocuments's item 1
--		
--		set itemCount to count allPageItemsSource
--		
--		repeat with i from 1 to count allPageItemsSource
--			set loopINDID to id of allPageItemsSource's item i
--			set loopUUID to label of allPageItemsSource's item i
--			try
--				set targetObject to (first item of all page items of otherDocuments's item 1 whose id is loopINDID)
--				set label of targetObject to loopUUID
--			end try
--		end repeat
--	end tell
--	set my stopBool to true
--end transferUUIDsFromATaggedSourceDocumentToATargetDocument

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on deleteAllUUIDs()
	tell application id "com.adobe.InDesign"
		set my allPageItems to all page items of activeDocument --ich glaube das hier sind ALLE Objekte!
		
		repeat with i from 1 to count my allPageItems
			set label of item i of my allPageItems to ""
		end repeat
	end tell
	set my stopBool to true
end deleteAllUUIDs

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on tagSelectedObjects()
	tell application id "com.adobe.InDesign"
		set my theSelection to selection of activeDocument
		
		if (count of my theSelection) < 1 then
			display dialog "Es ist nichts ausgewКhlt!" & return & "Bitte EIN Objekt auswКhlen." buttons "OK" default button "OK"
			set my stopBool to false
		else
			repeat with x from 1 to count my theSelection
				if class of item x of my theSelection = group then
					repeat with y from 1 to count (every page item of item x of my theSelection)
						my UUIDGenerator()
						set label of page item y of item x of my theSelection to my UUID
					end repeat
				end if
				my UUIDGenerator()
				set label of item x of my theSelection to my UUID
			end repeat
			set my stopBool to true
		end if
		
	end tell
end tagSelectedObjects

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on untagSelectedObjects()
	tell application id "com.adobe.InDesign"
		set my theSelection to selection of activeDocument
		
		if (count of my theSelection) < 1 then
			display dialog "Es ist nichts ausgewКhlt!" & return & "Bitte EIN Objekt auswКhlen." buttons "OK" default button "OK"
			set my stopBool to false
		else
			repeat with x from 1 to count my theSelection
				if class of item x of my theSelection = group then
					repeat with y from 1 to count (every page item of item x of my theSelection)
						set label of page item y of item x of my theSelection to ""
					end repeat
				end if
				set label of item x of my theSelection to ""
			end repeat
			set my stopBool to true
		end if
		
	end tell
end untagSelectedObjects

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

--on transformTheSelectedObjects()
--	tell application id "com.adobe.InDesign"
--		
--		set theSelection to selection of activeDocument
--		if (count of theSelection) < 1 then
--			display dialog "Es ist nichts ausgewКhlt!" & return & "Bitte ein oder mehrere Objekte auswКhlen." buttons "OK" default button "OK"
--		else
--			set theSelection to every item of selection of activeDocument
--			
--			--repeat with x from 1 to count theSelection
--			repeat with x from (count theSelection) to 1 by -1
--				set my UUID to label of item x of theSelection
--				set myGeometry to geometric bounds of item x of theSelection
--				repeat with y from 1 to count otherDocuments
--					
--					set geometric bounds of (every page item of otherDocuments's item y whose label contains my UUID) to myGeometry
--				end repeat
--			end repeat
--		end if
--		
--	end tell
--end transformTheSelectedObjects

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on copyTheSelectedObjects()
	tell application id "com.adobe.InDesign"
		
		set my theSelection to selection of activeDocument
		if (count of theSelection) < 1 then
			display dialog "Es ist nichts ausgewКhlt!" & return & "Bitte ein oder mehrere Objekte auswКhlen." buttons "OK" default button "OK"
			set my stopBool to false
		else
			set my theSelection to every item of selection of activeDocument
			
			repeat with x from 1 to count my theSelection
				--repeat with x from (count theSelection) to 1 by -1
				set my UUID to label of item x of my theSelection
				--myLayer
				set my myLayer to item layer of item x of my theSelection
				repeat with y from 1 to count my otherDocuments
					--delete (every page item of openDocuments's item y whose label contains my UUID)
					duplicate item x of my theSelection to layer (name of my myLayer) of my otherDocuments's item y
				end repeat
			end repeat
			set my stopBool to true
		end if
		
	end tell
end copyTheSelectedObjects

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on moveTheSelectedObjectsBy()
	tell application id "com.adobe.InDesign"
		
		set my theSelection to selection of activeDocument
		if (count of my theSelection) < 1 then
			display dialog "Es ist nichts ausgewКhlt!" & return & "Bitte ein oder mehrere Objekte auswКhlen." buttons "OK" default button "OK"
			set my stopBool to false
		else
			set my theSelection to every item of selection of activeDocument
			
			my xyCoordinatesDialog()
			
			if my xValue contains "," then
				set o to (offset of "," in my xValue)
				if ((o > 0) and (0.0 as string is "0,0")) then set xValue to (text 1 thru (o - 1) of xValue & "," & text (o + 1) thru -1 of xValue)
				set xValue to xValue as number
			end if
			
			if my yValue contains "," then
				set o to (offset of "," in my yValue)
				if ((o > 0) and (0.0 as string is "0,0")) then set yValue to (text 1 thru (o - 1) of yValue & "," & text (o + 1) thru -1 of yValue)
				set yValue to yValue as number
			end if
			
			repeat with x from (count my theSelection) to 1 by -1
				set my UUID to label of item x of my theSelection
				--set myGeometry to geometric bounds of item x of theSelection
				repeat with y from 1 to count my openDocuments
					--set geometric bounds of (every page item of otherDocuments's item y whose label contains my UUID) to myGeometry
					try
						move (every page item of my openDocuments's item y whose label contains my UUID) by {xValue, yValue}
					end try
				end repeat
			end repeat
			set my stopBool to true
		end if
		
	end tell
end moveTheSelectedObjectsBy

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on moveTheSelectedObjectsTo()
	tell application id "com.adobe.InDesign"
		
		set my theSelection to selection of activeDocument
		
		if (count of my theSelection) < 1 then
			display dialog "Es ist nichts ausgewКhlt!" & return & "Bitte EIN Objekt auswКhlen." buttons "OK" default button "OK"
			set my stopBool to false
		else if (count of my theSelection) > 1 then
			display dialog "Es sind mehrere Objekte ausgewКhlt!" & return & "Bitte nur EIN Objekt auswКhlen." buttons "OK" default button "OK"
			set my stopBool to false
		else
			set my theSelection to every item of selection of activeDocument
			
			set my xValue to item 2 of geometric bounds of my theSelection
			set my yValue to item 1 of geometric bounds of my theSelection
			
			if class of my theSelection is graphic line then
				display dialog "Linien mit der anderen Methode verschieben!!!" buttons "OK" default button "OK" --buttons {"Stop", "Weiter"} default button "Weiter"
				--if button returned of result is "Stop" then exit repeat
				return
			end if
			
			
			my xyCoordinatesDialog()
			
			if my xValue contains "," then
				set o to (offset of "," in my xValue)
				if ((o > 0) and (0.0 as string is "0,0")) then set my xValue to (text 1 thru (o - 1) of my xValue & "," & text (o + 1) thru -1 of my xValue)
				set my xValue to my xValue as number
			end if
			
			if my yValue contains "," then
				set o to (offset of "," in my yValue)
				if ((o > 0) and (0.0 as string is "0,0")) then set my yValue to (text 1 thru (o - 1) of my yValue & "," & text (o + 1) thru -1 of my yValue)
				set my yValue to my yValue as number
			end if
			
			repeat with x from (count my theSelection) to 1 by -1
				set my UUID to label of item x of my theSelection
				repeat with y from 1 to count my openDocuments
					try
						move (every page item of my openDocuments's item y whose label contains my UUID) to {xValue, yValue}
					end try
				end repeat
			end repeat
			set my stopBool to true
		end if
		
	end tell
end moveTheSelectedObjectsTo

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on moveLayerTheSelectedObjects()
	tell application id "com.adobe.InDesign"
		
		set my theSelection to selection of activeDocument
		if (count of my theSelection) < 1 then
			display dialog "Es ist nichts ausgewКhlt!" & return & "Bitte ein oder mehrere Objekte auswКhlen." buttons "OK" default button "OK"
			set my stopBool to false
		else
			set my theSelection to every item of selection of activeDocument
			
			set my chosenLayer to choose from list (reverse of deduplicatedLayerNames) default items chosenLayer with prompt "Ziel-Ebene wКhlen:" OK button name "Verschieben"
			
			set chosenLayerColor to layer color of layer (chosenLayer as string) of activeDocument
			
			--repeat with x from 1 to count theSelection
			repeat with x from (count theSelection) to 1 by -1
				set my UUID to label of item x of my theSelection
				--set myGeometry to geometric bounds of item x of theSelection
				repeat with y from 1 to count my openDocuments
					--set geometric bounds of (every page item of otherDocuments's item y whose label contains my UUID) to myGeometry
					--move (every page item of openDocuments's item y whose label contains my UUID) by {xValue, yValue}
					if not (layer (chosenLayer as string) of openDocuments's item y exists) then make new layer of openDocuments's item y with properties {name:(chosenLayer as string), layer color:chosenLayerColor}
					try
						set item layer of (every page item of openDocuments's item y whose label contains my UUID) to layer (chosenLayer as string) of openDocuments's item y
					end try
				end repeat
			end repeat
			set my stopBool to true
		end if
		
	end tell
end moveLayerTheSelectedObjects

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

-- the functionChooser shows the user a list dialog with the functions of the script. after choosing the desired function gets called (together with one or more arguments)
on functionChooser()
	set functionChoice to choose from list {"Alle Objekte taggen!", "Alle Objekte auf Ebene taggen ...", "Alle Objekte enttaggen!", "AusgewКhlte Objekte taggen!", "AusgewКhlte Objekte enttaggen!", "AusgewКhlte Objekte lЪschen!", "AusgewКhlte Objekte verteilen!", "AusgewКhlte Objekte verschieben (um x,y)!", "AusgewКhlte Objekte verschieben (auf x,y)!", "AusgewКhlte Objekte verschieben (auf Ebene)!", "AusgewКhlte Objekte auswКhlen!", "Erstes gefundenes Duplikat auswКhlen!"} default items functionChoice with prompt "Funktion wКhlen:" OK button name "Weiter!"
	
	if the functionChoice = {"Alle Objekte taggen!"} then
		my giveAllPageItemsAnUUID()
	else if the functionChoice = {"Alle Objekte auf Ebene taggen ..."} then
		my giveAllPageItemsOnLayerAnUUID()
	else if the functionChoice = {"Alle Objekte enttaggen!"} then
		my deleteAllUUIDs()
		
		--else if the functionChoice = {"Alle UUIDs aus Quelldokument Яbertragen"} then
		--	my transferUUIDsFromATaggedSourceDocumentToATargetDocument()
		
	else if the functionChoice = {"AusgewКhlte Objekte taggen!"} then
		my tagSelectedObjects()
	else if the functionChoice = {"AusgewКhlte Objekte enttaggen!"} then
		my untagSelectedObjects()
	else if the functionChoice = {"AusgewКhlte Objekte lЪschen!"} then
		my deleteTheSelectedObjects()
	else if the functionChoice = {"AusgewКhlte Objekte verteilen!"} then
		my copyTheSelectedObjects()
	else if the functionChoice = {"AusgewКhlte Objekte verschieben (um x,y)!"} then
		my moveTheSelectedObjectsBy()
	else if the functionChoice = {"AusgewКhlte Objekte verschieben (auf x,y)!"} then
		my moveTheSelectedObjectsTo()
	else if the functionChoice = {"AusgewКhlte Objekte verschieben (auf Ebene)!"} then
		my moveLayerTheSelectedObjects()
	else if the functionChoice = {"AusgewКhlte Objekte auswКhlen!"} then
		my setTheSelection()
	else if the functionChoice = {"Erstes gefundenes Duplikat auswКhlen!"} then
		my jumpToFirstUUIDDuplicate()
		
		--else if the functionChoice = {"AusgewКhlte Objekte transformieren (beta!)"} then
		--	my transformTheSelectedObjects()
	end if
	
end functionChooser

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

-- the duplicator take a list as an argument and returns a new deduplicated list
to deduplicator(l)
	set my deduplicatedLayerNames to {}
	repeat with i from 1 to count l
		set x to (l's item i)
		if x is not in my deduplicatedLayerNames then set end of my deduplicatedLayerNames to x
	end repeat
	my deduplicatedLayerNames
end deduplicator

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on xyCoordinatesDialog()
	
	tell application id "com.adobe.InDesign"
		
		set myLabelWidth to 10
		
		set myDialog to make dialog with properties {name:"Koordinaten eingeben"}
		tell myDialog
			tell (make dialog column)
				tell (make dialog row)
					tell (make dialog column)
						make static text with properties {static label:"x:", min width:myLabelWidth}
						make static text with properties {static label:"y:", min width:myLabelWidth}
					end tell
					tell (make dialog column)
						set myXField to make text editbox with properties {edit contents:(xValue as string)}
						set myYField to make text editbox with properties {edit contents:(yValue as string)}
					end tell
				end tell
			end tell
		end tell
		
		set myResult to show myDialog
		if myResult is true then
			set xValue to edit contents of myXField
			set yValue to edit contents of myYField
			destroy myDialog
			--my doSomething(xValue, yValue)
		else
			destroy myDialog
		end if
		
	end tell
	
end xyCoordinatesDialog

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

on displayTheEnd()
	display dialog "Fertig!" buttons "OK" default button "OK" giving up after 1
end displayTheEnd

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

--my displayNotificationLong("Title text", "Subtitle text", "Body text")
on displayNotificationLong(titleText, subtitleText, bodyText)
	display notification bodyText with title titleText subtitle subtitleText --sound name "default"
	--delay 0.5
end displayNotificationLong

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее

--my displayNotificationShort("Title text", "Body text")
on displayNotificationShort(titleText, bodyText)
	display notification bodyText with title titleText --sound name "default"
	--delay 0.5
end displayNotificationShort

-- еееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееееее
-- Here starts the garbage, the left-overs, whatever you want call it ... or if I cleaned it up, this is the end!