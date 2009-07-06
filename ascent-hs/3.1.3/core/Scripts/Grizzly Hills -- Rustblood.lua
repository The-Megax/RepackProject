--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Rustblood_OnCombat(Unit, Event)
Unit:RegisterEvent("Rustblood_Cleave", 8000, 0)
Unit:RegisterEvent("Rustblood_HeadSmash", 10000, 0)
Unit:RegisterEvent("Rustblood_Knockback", 11000, 0)
Unit:RegisterEvent("Rustblood_LightningBolt", 6000, 0)
end

function Rustblood_Cleave(pUnit, Event) 
pUnit:CastSpell(42746) 
end

function Rustblood_HeadSmash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14102, pUnit:GetMainTank()) 
end

function Rustblood_Knockback(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49398, pUnit:GetMainTank()) 
end

function Rustblood_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49454, pUnit:GetMainTank()) 
end

function Rustblood_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Rustblood_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Rustblood_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27717, 1, "Rustblood_OnCombat")
RegisterUnitEvent(27717, 2, "Rustblood_OnLeaveCombat")
RegisterUnitEvent(27717, 3, "Rustblood_OnKilledTarget")
RegisterUnitEvent(27717, 4, "Rustblood_OnDied")