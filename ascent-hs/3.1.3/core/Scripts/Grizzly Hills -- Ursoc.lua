--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Ursoc_OnCombat(Unit, Event)
Unit:RegisterEvent("Ursoc_CrunchArmor", 6000, 0)
Unit:RegisterEvent("Ursoc_OldGodsInfluence", 10000, 1)
Unit:RegisterEvent("Ursoc_Summon BloodoftheOldGod", 5000, 1)
end

function Ursoc_CrunchArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52581, pUnit:GetMainTank()) 
end

function Ursoc_OldGodsInfluence(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52583, pUnit:GetMainTank()) 
end

function Ursoc_SummonBloodoftheOldGod(pUnit, Event) 
pUnit:CastSpell(52560) 
end

function Ursoc_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Ursoc_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Ursoc_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26633, 1, "Ursoc_OnCombat")
RegisterUnitEvent(26633, 2, "Ursoc_OnLeaveCombat")
RegisterUnitEvent(26633, 3, "Ursoc_OnKilledTarget")
RegisterUnitEvent(26633, 4, "Ursoc_OnDied")