--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BloodElfReclaimer_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodElfReclaimer_Fireball", 8000, 0)
Unit:RegisterEvent("BloodElfReclaimer_Heal", 14000, 0)
Unit:RegisterEvent("BloodElfReclaimer_Renew", 10000, 0)
end

function BloodElfReclaimer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20823, pUnit:GetMainTank()) 
end

function BloodElfReclaimer_Heal(pUnit, Event) 
pUnit:CastSpell(11642) 
end

function BloodElfReclaimer_Renew(pUnit, Event) 
pUnit:CastSpell(11640) 
end

function BloodElfReclaimer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodElfReclaimer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodElfReclaimer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6199, 1, "BloodElfReclaimer_OnCombat")
RegisterUnitEvent(6199, 2, "BloodElfReclaimer_OnLeaveCombat")
RegisterUnitEvent(6199, 3, "BloodElfReclaimer_OnKilledTarget")
RegisterUnitEvent(6199, 4, "BloodElfReclaimer_OnDied")