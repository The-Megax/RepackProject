--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HighborneApparition_OnCombat(Unit, Event)
Unit:RegisterEvent("HighborneApparition_Fear", 12000, 0)
end

function HighborneApparition_Fear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12542, pUnit:GetMainTank()) 
end

function HighborneApparition_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighborneApparition_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighborneApparition_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6116, 1, "HighborneApparition_OnCombat")
RegisterUnitEvent(6116, 2, "HighborneApparition_OnLeaveCombat")
RegisterUnitEvent(6116, 3, "HighborneApparition_OnKilledTarget")
RegisterUnitEvent(6116, 4, "HighborneApparition_OnDied")