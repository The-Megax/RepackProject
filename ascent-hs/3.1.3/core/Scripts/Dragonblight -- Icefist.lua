--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Icefist_OnCombat(Unit, Event)
Unit:RegisterEvent("Icefist_IceSlash", 6000, 0)
Unit:RegisterEvent("Icefist_TuskStrike", 8000, 0)
end

function Icefist_IceSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51878, pUnit:GetMainTank()) 
end

function Icefist_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function Icefist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Icefist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Icefist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27004, 1, "Icefist_OnCombat")
RegisterUnitEvent(27004, 2, "Icefist_OnLeaveCombat")
RegisterUnitEvent(27004, 3, "Icefist_OnKilledTarget")
RegisterUnitEvent(27004, 4, "Icefist_OnDied")