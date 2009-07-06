--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BristlebackThornweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackThornweaver_Thorns", 3000, 1)
Unit:RegisterEvent("BristlebackThornweaver_EntanglingRoots", 12000, 0)
end

function BristlebackThornweaver_Thorns(pUnit, Event) 
pUnit:CastSpell(782) 
end

function BristlebackThornweaver_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12747, pUnit:GetMainTank()) 
end

function BristlebackThornweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackThornweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackThornweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3261, 1, "BristlebackThornweaver_OnCombat")
RegisterUnitEvent(3261, 2, "BristlebackThornweaver_OnLeaveCombat")
RegisterUnitEvent(3261, 3, "BristlebackThornweaver_OnKilledTarget")
RegisterUnitEvent(3261, 4, "BristlebackThornweaver_OnDied")