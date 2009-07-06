--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Iceshatter_OnCombat(Unit, Event)
Unit:RegisterEvent("Iceshatter_MagnataurCharge", 8000, 0)
Unit:RegisterEvent("Iceshatter_PulsingShards", 6000, 0)
end

function Iceshatter_MagnataurCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52088, pUnit:GetMainTank()) 
end

function Iceshatter_PulsingShards(pUnit, Event) 
pUnit:CastSpell(52118) 
end

function Iceshatter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Iceshatter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Iceshatter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27007, 1, "Iceshatter_OnCombat")
RegisterUnitEvent(27007, 2, "Iceshatter_OnLeaveCombat")
RegisterUnitEvent(27007, 3, "Iceshatter_OnKilledTarget")
RegisterUnitEvent(27007, 4, "Iceshatter_OnDied")