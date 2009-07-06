--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BloodfuryAmbusher_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryAmbusher_Shock", 8000, 1)
end

function BloodfuryAmbusher_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2608, pUnit:GetMainTank()) 
end

function BloodfuryAmbusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfuryAmbusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfuryAmbusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4025, 1, "BloodfuryAmbusher_OnCombat")
RegisterUnitEvent(4025, 2, "BloodfuryAmbusher_OnLeaveCombat")
RegisterUnitEvent(4025, 3, "BloodfuryAmbusher_OnKilledTarget")
RegisterUnitEvent(4025, 4, "BloodfuryAmbusher_OnDied")