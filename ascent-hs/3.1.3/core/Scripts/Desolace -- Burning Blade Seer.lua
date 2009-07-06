--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BurningBladeSeer_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeSeer_FlameBuffet", 8000, 0)
Unit:RegisterEvent("BurningBladeSeer_Flamestrike", 11000, 0)
end

function BurningBladeSeer_FlameBuffet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9658, pUnit:GetMainTank()) 
end

function BurningBladeSeer_Flamestrike(pUnit, Event) 
pUnit:CastSpell(11829) 
end

function BurningBladeSeer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeSeer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeSeer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(13019, 1, "BurningBladeSeer_OnCombat")
RegisterUnitEvent(13019, 2, "BurningBladeSeer_OnLeaveCombat")
RegisterUnitEvent(13019, 3, "BurningBladeSeer_OnKilledTarget")
RegisterUnitEvent(13019, 4, "BurningBladeSeer_OnDied")