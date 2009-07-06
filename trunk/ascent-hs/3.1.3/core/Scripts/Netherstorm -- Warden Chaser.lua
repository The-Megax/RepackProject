--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Chaser_OnCombat(Unit, Event)
Unit:RegisterEvent("Chaser_Invisible", 15000, 0)
Unit:RegisterEvent("Chaser_Bite", 4000, 0)
Unit:RegisterEvent("Chaser_Warp", 7000, 0)
Unit:RegisterEvent("Chaser_WarpCharge", 5000, 0)
end

function Chaser_Invisible(pUnit, Event) 
pUnit:CastSpell(32943) 
end

function Chaser_Bite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32739, pUnit:GetMainTank()) 
end

function Chaser_Warp(pUnit, Event) 
pUnit:CastSpell(32920) 
end

function Chaser_WarpCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(37417, pUnit:GetMainTank()) 
end

function Chaser_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Chaser_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Chaser_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18884, 1, "Chaser_OnCombat")
RegisterUnitEvent(18884, 2, "Chaser_OnLeaveCombat")
RegisterUnitEvent(18884, 3, "Chaser_OnKilledTarget")
RegisterUnitEvent(18884, 4, "Chaser_OnDied")