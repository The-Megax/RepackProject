--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function IceshardElemental_OnCombat(Unit, Event)
Unit:RegisterEvent("IceshardElemental_IceSpike", 8000, 0)
end

function IceshardElemental_IceSpike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50094, pUnit:GetMainTank()) 
end

function IceshardElemental_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function IceshardElemental_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function IceshardElemental_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24228, 1, "IceshardElemental_OnCombat")
RegisterUnitEvent(24228, 2, "IceshardElemental_OnLeaveCombat")
RegisterUnitEvent(24228, 3, "IceshardElemental_OnKilledTarget")
RegisterUnitEvent(24228, 4, "IceshardElemental_OnDied")