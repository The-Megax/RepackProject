--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BloodfuryWindcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryWindcaller_EnvelopingWinds", 15000, 0)
end

function BloodfuryWindcaller_EnvelopingWinds(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6728, pUnit:GetMainTank()) 
end

function BloodfuryWindcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfuryWindcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfuryWindcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4026, 1, "BloodfuryWindcaller_OnCombat")
RegisterUnitEvent(4026, 2, "BloodfuryWindcaller_OnLeaveCombat")
RegisterUnitEvent(4026, 3, "BloodfuryWindcaller_OnKilledTarget")
RegisterUnitEvent(4026, 4, "BloodfuryWindcaller_OnDied")