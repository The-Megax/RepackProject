--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BloodfuryRipper_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryRipper_Enrage", 15000, 1)
Unit:RegisterEvent("BloodfuryRipper_Rend", 10000, 0)
end

function BloodfuryRipper_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function BloodfuryRipper_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13443, pUnit:GetMainTank()) 
end

function BloodfuryRipper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfuryRipper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfuryRipper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12579, 1, "BloodfuryRipper_OnCombat")
RegisterUnitEvent(12579, 2, "BloodfuryRipper_OnLeaveCombat")
RegisterUnitEvent(12579, 3, "BloodfuryRipper_OnKilledTarget")
RegisterUnitEvent(12579, 4, "BloodfuryRipper_OnDied")