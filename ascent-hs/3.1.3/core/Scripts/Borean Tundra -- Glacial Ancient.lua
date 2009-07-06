--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GlacialAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("GlacialAncient_FrostBreath", 8000, 0)
end

function GlacialAncient_FrostBreath(pUnit, Event) 
pUnit:CastSpell(50505) 
end

function GlacialAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlacialAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlacialAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25709, 1, "GlacialAncient_OnCombat")
RegisterUnitEvent(25709, 2, "GlacialAncient_OnLeaveCombat")
RegisterUnitEvent(25709, 3, "GlacialAncient_OnKilledTarget")
RegisterUnitEvent(25709, 4, "GlacialAncient_OnDied")