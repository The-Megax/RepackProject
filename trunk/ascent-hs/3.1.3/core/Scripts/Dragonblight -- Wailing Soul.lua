--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WailingSoul_OnCombat(Unit, Event)
Unit:RegisterEvent("WailingSoul_TugSoul", 10000, 0)
end

function WailingSoul_TugSoul(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50027, pUnit:GetMainTank()) 
end

function WailingSoul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WailingSoul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WailingSoul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27836, 1, "WailingSoul_OnCombat")
RegisterUnitEvent(27836, 2, "WailingSoul_OnLeaveCombat")
RegisterUnitEvent(27836, 3, "WailingSoul_OnKilledTarget")
RegisterUnitEvent(27836, 4, "WailingSoul_OnDied")