-- Quest fix 27671 (See to the Survivors)
UPDATE `creature` SET `spawntimesecs` = '30' WHERE id = 33024;
UPDATE `creature` SET `spawntimesecs` = '30' WHERE id = 33024;

DELETE FROM `spell_scripts` WHERE `id` = '86264' AND `command` = '18';
INSERT INTO `spell_scripts` (`id`, `command`, `datalong`) VALUES ('86264', '18', '1000');

DELETE FROM `conditions` WHERE `SourceEntry` = 86264 AND `ConditionValue1` = '46268';
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`) VALUES ('17', '86264', '19', '46268');

-- Target Acquisition Device flags fix
UPDATE `creature_template` SET `unit_flags` = unit_flags | 33554432, `InhabitType` = '4', `MovementType`='1' WHERE entry = 46012;
UPDATE `creature` SET `spawndist` = '10' WHERE id = 46012;
