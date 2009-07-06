--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MistwingRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("MistwingRogue_LightningBolt", 8000, 0)
end

function MistwingRogue_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function MistwingRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MistwingRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MistwingRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8763, 1, "MistwingRogue_OnCombat")
RegisterUnitEvent(8763, 2, "MistwingRogue_OnLeaveCombat")
RegisterUnitEvent(8763, 3, "MistwingRogue_OnKilledTarget")
RegisterUnitEvent(8763, 4, "MistwingRogue_OnDied")