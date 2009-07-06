--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SouthseaPirate_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaPirate_Strike", 6000, 0)
end

function SouthseaPirate_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function SouthseaPirate_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaPirate_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaPirate_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7855, 1, "SouthseaPirate_OnCombat")
RegisterUnitEvent(7855, 2, "SouthseaPirate_OnLeaveCombat")
RegisterUnitEvent(7855, 3, "SouthseaPirate_OnKilledTarget")
RegisterUnitEvent(7855, 4, "SouthseaPirate_OnDied")