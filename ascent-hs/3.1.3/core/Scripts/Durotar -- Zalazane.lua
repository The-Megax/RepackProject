--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Zalazane_OnCombat(Unit, Event)
Unit:RegisterEvent("Zalazane_Shrink", 6000, 0)
Unit:RegisterEvent("Zalazane_HealingWave", 12000, 0)
end

function Zalazane_Shrink(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7289, pUnit:GetMainTank()) 
end

function Zalazane_HealingWave(pUnit, Event) 
pUnit:CastSpell(332) 
end

function Zalazane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Zalazane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Zalazane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3205, 1, "Zalazane_OnCombat")
RegisterUnitEvent(3205, 2, "Zalazane_OnLeaveCombat")
RegisterUnitEvent(3205, 3, "Zalazane_OnKilledTarget")
RegisterUnitEvent(3205, 4, "Zalazane_OnDied")