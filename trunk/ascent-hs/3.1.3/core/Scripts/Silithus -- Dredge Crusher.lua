--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DredgeCrusher_OnCombat(Unit, Event)
Unit:RegisterEvent("DredgeCrusher_Lash", 8000, 0)
end

function DredgeCrusher_Lash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6607, pUnit:GetMainTank()) 
end

function DredgeCrusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DredgeCrusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DredgeCrusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11741, 1, "DredgeCrusher_OnCombat")
RegisterUnitEvent(11741, 2, "DredgeCrusher_OnLeaveCombat")
RegisterUnitEvent(11741, 3, "DredgeCrusher_OnKilledTarget")
RegisterUnitEvent(11741, 4, "DredgeCrusher_OnDied")