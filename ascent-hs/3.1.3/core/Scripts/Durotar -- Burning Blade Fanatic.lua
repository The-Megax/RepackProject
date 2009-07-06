--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BurningBladeFanatic_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeFanatic_FanaticBlade", 8000, 0)
end

function BurningBladeFanatic_FanaticBlade(pUnit, Event) 
pUnit:CastSpell(5262) 
end

function BurningBladeFanatic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeFanatic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeFanatic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3197, 1, "BurningBladeFanatic_OnCombat")
RegisterUnitEvent(3197, 2, "BurningBladeFanatic_OnLeaveCombat")
RegisterUnitEvent(3197, 3, "BurningBladeFanatic_OnKilledTarget")
RegisterUnitEvent(3197, 4, "BurningBladeFanatic_OnDied")