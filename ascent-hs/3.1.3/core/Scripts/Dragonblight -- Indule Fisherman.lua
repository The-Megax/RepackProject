--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function InduleFisherman_OnCombat(Unit, Event)
Unit:RegisterEvent("InduleFisherman_ElectrifiedNet", 10000, 0)
end

function InduleFisherman_ElectrifiedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11820, pUnit:GetMainTank()) 
end

function InduleFisherman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InduleFisherman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InduleFisherman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26343, 1, "InduleFisherman_OnCombat")
RegisterUnitEvent(26343, 2, "InduleFisherman_OnLeaveCombat")
RegisterUnitEvent(26343, 3, "InduleFisherman_OnKilledTarget")
RegisterUnitEvent(26343, 4, "InduleFisherman_OnDied")