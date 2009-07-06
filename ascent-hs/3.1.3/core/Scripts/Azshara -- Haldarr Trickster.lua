--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HaldarrTrickster_OnCombat(Unit, Event)
Unit:RegisterEvent("HaldarrTrickster_CurseofMending", 8000, 0)
end

function HaldarrTrickster_CurseofMending(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7098, pUnit:GetMainTank()) 
end

function HaldarrTrickster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HaldarrTrickster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HaldarrTrickster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6126, 1, "HaldarrTrickster_OnCombat")
RegisterUnitEvent(6126, 2, "HaldarrTrickster_OnLeaveCombat")
RegisterUnitEvent(6126, 3, "HaldarrTrickster_OnKilledTarget")
RegisterUnitEvent(6126, 4, "HaldarrTrickster_OnDied")