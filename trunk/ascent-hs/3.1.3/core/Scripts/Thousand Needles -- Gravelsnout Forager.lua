--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GravelsnoutForager_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelsnoutForager_CorrosiveAcid", 10000, 0)
end

function GravelsnoutForager_CorrosiveAcid(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8245, pUnit:GetMainTank()) 
end

function GravelsnoutForager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelsnoutForager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelsnoutForager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4114, 1, "GravelsnoutForager_OnCombat")
RegisterUnitEvent(4114, 2, "GravelsnoutForager_OnLeaveCombat")
RegisterUnitEvent(4114, 3, "GravelsnoutForager_OnKilledTarget")
RegisterUnitEvent(4114, 4, "GravelsnoutForager_OnDied")