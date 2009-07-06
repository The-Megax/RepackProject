--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SteamRager_OnCombat(Unit, Event)
Unit:RegisterEvent("SteamRager_SteamBlast", 8000, 0)
end

function SteamRager_SteamBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50375, pUnit:GetMainTank()) 
end

function SteamRager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SteamRager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SteamRager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24601, 1, "SteamRager_OnCombat")
RegisterUnitEvent(24601, 2, "SteamRager_OnLeaveCombat")
RegisterUnitEvent(24601, 3, "SteamRager_OnKilledTarget")
RegisterUnitEvent(24601, 4, "SteamRager_OnDied")