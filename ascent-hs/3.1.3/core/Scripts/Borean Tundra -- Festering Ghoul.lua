--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FesteringGhoul_OnCombat(Unit, Event)
Unit:RegisterEvent("FesteringGhoul_RotArmor", 10000, 0)
end

function FesteringGhoul_RotArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50361, pUnit:GetMainTank()) 
end

function FesteringGhoul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FesteringGhoul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FesteringGhoul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25660, 1, "FesteringGhoul_OnCombat")
RegisterUnitEvent(25660, 2, "FesteringGhoul_OnLeaveCombat")
RegisterUnitEvent(25660, 3, "FesteringGhoul_OnKilledTarget")
RegisterUnitEvent(25660, 4, "FesteringGhoul_OnDied")