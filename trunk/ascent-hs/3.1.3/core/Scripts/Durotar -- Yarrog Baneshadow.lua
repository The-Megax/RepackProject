--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function YarrogBaneshadow_OnCombat(Unit, Event)
Unit:RegisterEvent("YarrogBaneshadow_Immolate", 6000, 0)
Unit:RegisterEvent("YarrogBaneshadow_Corruption", 8000, 0)
end

function YarrogBaneshadow_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(348, pUnit:GetMainTank()) 
end

function YarrogBaneshadow_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(172, pUnit:GetMainTank()) 
end

function YarrogBaneshadow_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function YarrogBaneshadow_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function YarrogBaneshadow_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3183, 1, "YarrogBaneshadow_OnCombat")
RegisterUnitEvent(3183, 2, "YarrogBaneshadow_OnLeaveCombat")
RegisterUnitEvent(3183, 3, "YarrogBaneshadow_OnKilledTarget")
RegisterUnitEvent(3183, 4, "YarrogBaneshadow_OnDied")