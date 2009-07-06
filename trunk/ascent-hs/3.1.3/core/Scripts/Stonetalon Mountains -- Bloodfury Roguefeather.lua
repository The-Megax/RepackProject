--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BloodfuryRoguefeather_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfuryRoguefeather_Thrash", 5000, 0)
end

function BloodfuryRoguefeather_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function BloodfuryRoguefeather_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfuryRoguefeather_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfuryRoguefeather_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4023, 1, "BloodfuryRoguefeather_OnCombat")
RegisterUnitEvent(4023, 2, "BloodfuryRoguefeather_OnLeaveCombat")
RegisterUnitEvent(4023, 3, "BloodfuryRoguefeather_OnKilledTarget")
RegisterUnitEvent(4023, 4, "BloodfuryRoguefeather_OnDied")