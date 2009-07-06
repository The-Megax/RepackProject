--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function VarothensGhost_OnCombat(Unit, Event)
Unit:RegisterEvent("VarothensGhost_CurseofWeakness", 8000, 0)
end

function VarothensGhost_CurseofWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21007, pUnit:GetMainTank()) 
end

function VarothensGhost_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VarothensGhost_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VarothensGhost_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6118, 1, "VarothensGhost_OnCombat")
RegisterUnitEvent(6118, 2, "VarothensGhost_OnLeaveCombat")
RegisterUnitEvent(6118, 3, "VarothensGhost_OnKilledTarget")
RegisterUnitEvent(6118, 4, "VarothensGhost_OnDied")