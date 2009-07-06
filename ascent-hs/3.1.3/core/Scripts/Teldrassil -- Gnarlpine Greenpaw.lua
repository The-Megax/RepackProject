--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Greenpaw_OnCombat(Unit, Event)
Unit:RegisterEvent("Greenpaw_Rejuvenation", 10000, 0)
Unit:RegisterEvent("Greenpaw_Shock", 6000, 0)
end

function Greenpaw_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(774) 
end

function Greenpaw_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2606, pUnit:GetMainTank()) 
end

function Greenpaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Greenpaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Greenpaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(1993, 1, "Greenpaw_OnCombat")
RegisterUnitEvent(1993, 2, "Greenpaw_OnLeaveCombat")
RegisterUnitEvent(1993, 3, "Greenpaw_OnKilledTarget")
RegisterUnitEvent(1993, 4, "Greenpaw_OnDied")