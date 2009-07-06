--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CragStalker_OnCombat(Unit, Event)
Unit:RegisterEvent("CragStalker_SurpriseAttack", 8000, 0)
end

function CragStalker_SurpriseAttack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8151, pUnit:GetMainTank()) 
end

function CragStalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CragStalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CragStalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4126, 1, "CragStalker_OnCombat")
RegisterUnitEvent(4126, 2, "CragStalker_OnLeaveCombat")
RegisterUnitEvent(4126, 3, "CragStalker_OnKilledTarget")
RegisterUnitEvent(4126, 4, "CragStalker_OnDied")