--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FelmuskRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("FelmuskRogue_OverwhelmingStench", 10000, 0)
end

function FelmuskRogue_OverwhelmingStench(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6942, pUnit:GetMainTank()) 
end

function FelmuskRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FelmuskRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FelmuskRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3759, 1, "FelmuskRogue_OnCombat")
RegisterUnitEvent(3759, 2, "FelmuskRogue_OnLeaveCombat")
RegisterUnitEvent(3759, 3, "FelmuskRogue_OnKilledTarget")
RegisterUnitEvent(3759, 4, "FelmuskRogue_OnDied")