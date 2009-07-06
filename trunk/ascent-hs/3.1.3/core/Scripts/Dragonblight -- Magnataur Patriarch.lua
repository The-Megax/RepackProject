--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MagnataurPatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("MagnataurPatriarch_Throw", 5000, 0)
end

function MagnataurPatriarch_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38556, pUnit:GetMainTank()) 
end

function MagnataurPatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagnataurPatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagnataurPatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26295, 1, "MagnataurPatriarch_OnCombat")
RegisterUnitEvent(26295, 2, "MagnataurPatriarch_OnLeaveCombat")
RegisterUnitEvent(26295, 3, "MagnataurPatriarch_OnKilledTarget")
RegisterUnitEvent(26295, 4, "MagnataurPatriarch_OnDied")