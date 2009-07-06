--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CenarionBotanist_OnCombat(Unit, Event)
Unit:RegisterEvent("CenarionBotanist_Rejuvenation", 10000, 0)
Unit:RegisterEvent("CenarionBotanist_Wrath", 7000, 0)
end

function CenarionBotanist_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(1430) 
end

function CenarionBotanist_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function CenarionBotanist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CenarionBotanist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CenarionBotanist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4051, 1, "CenarionBotanist_OnCombat")
RegisterUnitEvent(4051, 2, "CenarionBotanist_OnLeaveCombat")
RegisterUnitEvent(4051, 3, "CenarionBotanist_OnKilledTarget")
RegisterUnitEvent(4051, 4, "CenarionBotanist_OnDied")