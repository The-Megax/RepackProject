--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Nak_OnCombat(Unit, Event)
Unit:RegisterEvent("Nak_LesserHealingWave", 15000, 0)
Unit:RegisterEvent("Nak_LightningBolt", 8000, 0)
end

function Nak_LesserHealingWave(pUnit, Event) 
pUnit:CastSpell(8004) 
end

function Nak_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function Nak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Nak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Nak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3434, 1, "Nak_OnCombat")
RegisterUnitEvent(3434, 2, "Nak_OnLeaveCombat")
RegisterUnitEvent(3434, 3, "Nak_OnKilledTarget")
RegisterUnitEvent(3434, 4, "Nak_OnDied")