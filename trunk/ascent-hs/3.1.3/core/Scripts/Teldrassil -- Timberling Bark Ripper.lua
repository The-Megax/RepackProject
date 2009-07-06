--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TimberlingBarkRipper_OnCombat(Unit, Event)
Unit:RegisterEvent("TimberlingBarkRipper_PierceArmor", 8000, 0)
end

function TimberlingBarkRipper_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function TimberlingBarkRipper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TimberlingBarkRipper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TimberlingBarkRipper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2025, 1, "TimberlingBarkRipper_OnCombat")
RegisterUnitEvent(2025, 2, "TimberlingBarkRipper_OnLeaveCombat")
RegisterUnitEvent(2025, 3, "TimberlingBarkRipper_OnKilledTarget")
RegisterUnitEvent(2025, 4, "TimberlingBarkRipper_OnDied")