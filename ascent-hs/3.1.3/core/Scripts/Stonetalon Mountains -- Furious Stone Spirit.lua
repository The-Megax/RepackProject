--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function FuriousStoneSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("FuriousStoneSpirit_Knockdown", 8000, 0)
end

function FuriousStoneSpirit_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5164, pUnit:GetMainTank()) 
end

function FuriousStoneSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FuriousStoneSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FuriousStoneSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4035, 1, "FuriousStoneSpirit_OnCombat")
RegisterUnitEvent(4035, 2, "FuriousStoneSpirit_OnLeaveCombat")
RegisterUnitEvent(4035, 3, "FuriousStoneSpirit_OnKilledTarget")
RegisterUnitEvent(4035, 4, "FuriousStoneSpirit_OnDied")