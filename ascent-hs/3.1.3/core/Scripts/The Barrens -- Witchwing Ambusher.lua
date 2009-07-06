--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WitchwingAmbusher_OnCombat(Unit, Event)
Unit:RegisterEvent("WitchwingAmbusher_ExploitWeakness", 5000, 0)
end

function WitchwingAmbusher_ExploitWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6595, pUnit:GetMainTank()) 
end

function WitchwingAmbusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitchwingAmbusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitchwingAmbusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3279, 1, "WitchwingAmbusher_OnCombat")
RegisterUnitEvent(3279, 2, "WitchwingAmbusher_OnLeaveCombat")
RegisterUnitEvent(3279, 3, "WitchwingAmbusher_OnKilledTarget")
RegisterUnitEvent(3279, 4, "WitchwingAmbusher_OnDied")