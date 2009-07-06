--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

--Dont Know if this will work sometimes invisibility doesn't work with LUA
--Here it goes

function AccursedApparition_OnSpawn(pUnit) -- Initiates On Spawn Function
	pUnit:CastSpell(16380) -- Instant Cast Greater Invisibility
end 

RegisterUnitEvent(21941, 6, "AccursedApparition_OnSpawn") -- Registering to Mob 21941 Which is [from wowhead] http://www.wowhead.com/?npc=21941
