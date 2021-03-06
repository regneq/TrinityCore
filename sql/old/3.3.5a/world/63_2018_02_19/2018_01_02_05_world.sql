-- 
-- ELM General Purpose Bunny
DELETE FROM `smart_scripts` WHERE `entryorguid`=23837 AND `source_type`=0 AND `id` IN (7,8);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(23837,0,7,0,38,0,100,0,29,29,0,0,11,40163,2,0,0,0,0,1,0,0,0,0,0,0,0,"ELM General Purpose Bunny - On Data Set - Cast Teleport"),
(23837,0,8,0,38,0,100,0,29,29,0,0,50,186943,30,0,0,0,0,1,0,0,0,0,0,0,0,"ELM General Purpose Bunny - On Data Set - Summon Gameobject 'Scuttle's Mop and Bucket'");

-- Scuttle Frostprow
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=24784;
DELETE FROM `smart_scripts` WHERE `entryorguid`=24784 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=2478400 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(24784,0,0,0,20,0,100,0,11469,0,0,0,80,2478400,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scuttle Frostprow - On Quest 'Swabbin' Soap' Finished - Run Script"),
(2478400,9,0,0,0,0,100,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scuttle Frostprow - On Script - Remove Npc Flag Questgiver"),
(2478400,9,1,0,0,0,100,0,500,500,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Scuttle Frostprow - On Script - Say Line 0"),
(2478400,9,2,0,0,0,100,0,2000,2000,0,0,11,44433,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scuttle Frostprow - On Script - Cast Summon Swabbin' Mops and Buckets"),
(2478400,9,3,0,0,0,100,0,3000,3000,0,0,45,29,29,0,0,0,0,11,23837,30,0,0,0,0,0,"Scuttle Frostprow - On Script - Set Data to ELM General Purpose Bunny"),
(2478400,9,4,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,10,102072,24642,0,0,0,0,0,"Scuttle Frostprow - On Script - Set Data to Drunken Northsea Pirate"),
(2478400,9,5,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Scuttle Frostprow - On Script - Say Line 1"),
(2478400,9,6,0,0,0,100,0,24000,24000,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scuttle Frostprow - On Script - Add Npc Flag Questgiver");

-- Drunken Northsea Pirate
DELETE FROM `smart_scripts` WHERE `entryorguid`=-102072 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=2464200 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(-102072,0,0,0,1,1,50,0,0,45000,90000,180000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drunken Northsea Pirate - Out of Combat - Say Line 0'),
(-102072,0,1,0,11,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drunken Northsea Pirate - On Respawn - Set Event Phase 1'),
(-102072,0,2,0,38,0,100,0,1,1,0,0,80,2464200,0,0,0,0,0,1,0,0,0,0,0,0,0,'Drunken Northsea Pirate - On Data Set - Run Script'),
(2464200,9,0,0,0,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drunken Northsea Pirate - On Script - Set Event Phase 0"),
(2464200,9,1,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drunken Northsea Pirate - On Script - Say Line 1"),
(2464200,9,2,0,0,0,100,0,7000,7000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.64061,"Drunken Northsea Pirate - On Script - Set Orientation"),
(2464200,9,3,0,0,0,100,0,1000,1000,0,0,11,44435,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drunken Northsea Pirate - On Script - Cast 'Swabbin' Soap: Drunken Northsea Pirate Throws Bottle'"),
(2464200,9,4,0,0,0,100,0,0,0,0,0,40,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drunken Northsea Pirate - On Script - Set Sheath Unarmed"),
(2464200,9,5,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drunken Northsea Pirate - On Script - Say Line 2"),
(2464200,9,6,0,0,0,100,0,15000,15000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.18879,"Drunken Northsea Pirate - On Script - Set Orientation"),
(2464200,9,7,0,0,0,100,0,0,0,0,0,40,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drunken Northsea Pirate - On Script - Set Sheath Melee"),
(2464200,9,8,0,0,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drunken Northsea Pirate - On Script - Set Event Phase 0");

-- Texts
DELETE FROM `creature_text` WHERE `CreatureID`=24784;
DELETE FROM `creature_text` WHERE `CreatureID`=24642 AND `GroupID` IN (1,2);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(24784,0,0,"There we go, $n! This fat'll do the trick fer sure! And now for some real swabbin'!",12,0,100,1,0,0,23831,0,"Scuttle Frostprow"),
(24784,1,0,"Look at 'em go! Spotless!",12,0,100,4,0,0,23832,0,"Scuttle Frostprow"),
(24642,1,0,"What ...hic?!",12,0,100,5,0,0,23834,0,"Drunken Northsea Pirate"),
(24642,2,0,"That's it... no more grog for me!",12,0,100,1,0,0,23835,0,"Drunken Northsea Pirate");
