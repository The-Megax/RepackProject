--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RazormaneThornweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneThornweaver_FaerieFire", 8000, 1)
Unit:RegisterEvent("RazormaneThornweaver_Thorns", 2000, 1)
end

function RazormaneThornweaver_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6950, pUnit:GetMainTank()) 
end

function RazormaneThornweaver_Thorns(pUnit, Event) 
pUnit:CastSpell(467) 
end

function RazormaneThornweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneThornweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneThornweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3268, 1, "RazormaneThornweaver_OnCombat")
RegisterUnitEvent(3268, 2, "RazormaneThornweaver_OnLeaveCombat")
RegisterUnitEvent(3268, 3, "RazormaneThornweaver_OnKilledTarget")
RegisterUnitEvent(3268, 4, "RazormaneThornweaver_OnDied")