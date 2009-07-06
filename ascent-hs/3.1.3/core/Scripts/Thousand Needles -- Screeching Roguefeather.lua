--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ScreechingRoguefeather_OnCombat(Unit, Event)
Unit:RegisterEvent("ScreechingRoguefeather_ExploitWeakness", 5000, 0)
end

function ScreechingRoguefeather_ExploitWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6595, pUnit:GetMainTank()) 
end

function ScreechingRoguefeather_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScreechingRoguefeather_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScreechingRoguefeather_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4101, 1, "ScreechingRoguefeather_OnCombat")
RegisterUnitEvent(4101, 2, "ScreechingRoguefeather_OnLeaveCombat")
RegisterUnitEvent(4101, 3, "ScreechingRoguefeather_OnKilledTarget")
RegisterUnitEvent(4101, 4, "ScreechingRoguefeather_OnDied")