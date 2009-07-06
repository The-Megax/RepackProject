--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodfeatherMatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfeatherMatriarch_HealingWave", 12000, 0)
Unit:RegisterEvent("BloodfeatherMatriarch_LightningBolt", 8000, 0)
end

function BloodfeatherMatriarch_HealingWave(pUnit, Event) 
pUnit:CastSpell(332) 
end

function BloodfeatherMatriarch_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function BloodfeatherMatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfeatherMatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfeatherMatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2021, 1, "BloodfeatherMatriarch_OnCombat")
RegisterUnitEvent(2021, 2, "BloodfeatherMatriarch_OnLeaveCombat")
RegisterUnitEvent(2021, 3, "BloodfeatherMatriarch_OnKilledTarget")
RegisterUnitEvent(2021, 4, "BloodfeatherMatriarch_OnDied")