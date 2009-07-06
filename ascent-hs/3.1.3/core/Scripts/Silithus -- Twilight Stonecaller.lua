--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TwilightStonecaller_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightStonecaller_Fireball", 8000, 0)
Unit:RegisterEvent("TwilightStonecaller_Petrify", 10000, 0)
end

function TwilightStonecaller_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function TwilightStonecaller_Petrify(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11020, pUnit:GetMainTank()) 
end

function TwilightStonecaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightStonecaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightStonecaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11882, 1, "TwilightStonecaller_OnCombat")
RegisterUnitEvent(11882, 2, "TwilightStonecaller_OnLeaveCombat")
RegisterUnitEvent(11882, 3, "TwilightStonecaller_OnKilledTarget")
RegisterUnitEvent(11882, 4, "TwilightStonecaller_OnDied")