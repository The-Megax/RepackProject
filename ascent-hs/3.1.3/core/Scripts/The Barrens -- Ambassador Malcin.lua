--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function AmbassadorMalcin_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbassadorMalcin_Shadowbolt", 8000, 0)
end

function AmbassadorMalcin_Shadowbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function AmbassadorMalcin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbassadorMalcin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbassadorMalcin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12865, 1, "AmbassadorMalcin_OnCombat")
RegisterUnitEvent(12865, 2, "AmbassadorMalcin_OnLeaveCombat")
RegisterUnitEvent(12865, 3, "AmbassadorMalcin_OnKilledTarget")
RegisterUnitEvent(12865, 4, "AmbassadorMalcin_OnDied")