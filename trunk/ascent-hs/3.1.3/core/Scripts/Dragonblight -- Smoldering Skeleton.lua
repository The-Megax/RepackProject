--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SmolderingSkeleton_OnCombat(Unit, Event)
Unit:RegisterEvent("SmolderingSkeleton_SmolderingBones", 8000, 0)
end

function SmolderingSkeleton_SmolderingBones(pUnit, Event) 
pUnit:CastSpell(51437) 
end

function SmolderingSkeleton_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SmolderingSkeleton_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SmolderingSkeleton_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27360, 1, "SmolderingSkeleton_OnCombat")
RegisterUnitEvent(27360, 2, "SmolderingSkeleton_OnLeaveCombat")
RegisterUnitEvent(27360, 3, "SmolderingSkeleton_OnKilledTarget")
RegisterUnitEvent(27360, 4, "SmolderingSkeleton_OnDied")