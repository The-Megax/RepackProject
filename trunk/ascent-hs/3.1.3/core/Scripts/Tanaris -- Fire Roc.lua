--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function FireRoc_OnCombat(Unit, Event)
Unit:RegisterEvent("FireRoc_Flamespit", 6000, 0)
end

function FireRoc_Flamespit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11021, pUnit:GetMainTank()) 
end

function FireRoc_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FireRoc_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FireRoc_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5429, 1, "FireRoc_OnCombat")
RegisterUnitEvent(5429, 2, "FireRoc_OnLeaveCombat")
RegisterUnitEvent(5429, 3, "FireRoc_OnKilledTarget")
RegisterUnitEvent(5429, 4, "FireRoc_OnDied")