--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function WitchwingRoguefeather_OnCombat(Unit, Event)
Unit:RegisterEvent("WitchwingRoguefeather_ExploitWeakness", 60000, 0)
Unit:RegisterEvent("WitchwingRoguefeather_SlowingPoison", 10000, 0)
end

function WitchwingRoguefeather_ExploitWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6595, pUnit:GetMainTank()) 
end

function WitchwingRoguefeather_SlowingPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7992, pUnit:GetMainTank()) 
end

function WitchwingRoguefeather_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitchwingRoguefeather_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitchwingRoguefeather_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3277, 1, "WitchwingRoguefeather_OnCombat")
RegisterUnitEvent(3277, 2, "WitchwingRoguefeather_OnLeaveCombat")
RegisterUnitEvent(3277, 3, "WitchwingRoguefeather_OnKilledTarget")
RegisterUnitEvent(3277, 4, "WitchwingRoguefeather_OnDied")