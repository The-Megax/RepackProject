--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BloodfurySlayer_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryRoguefeather_CurseofRecklessness", 5000, 2)
end

function BloodfuryRoguefeather_CurseofRecklessness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16231, pUnit:GetMainTank()) 
end

function BloodfurySlayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfurySlayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfurySlayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4024, 1, "BloodfurySlayer_OnCombat")
RegisterUnitEvent(4024, 2, "BloodfurySlayer_OnLeaveCombat")
RegisterUnitEvent(4024, 3, "BloodfurySlayer_OnKilledTarget")
RegisterUnitEvent(4024, 4, "BloodfurySlayer_OnDied")