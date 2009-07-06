--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Xilxix_OnCombat(Unit, Event)
Unit:RegisterEvent("Xilxix_BerserkerCharge", 6000, 0)
end

function Xilxix_BerserkerCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19471, pUnit:GetRandomPlayer(0)) 
end

function Xilxix_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Xilxix_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Xilxix_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15286, 1, "Xilxix_OnCombat")
RegisterUnitEvent(15286, 2, "Xilxix_OnLeaveCombat")
RegisterUnitEvent(15286, 3, "Xilxix_OnKilledTarget")
RegisterUnitEvent(15286, 4, "Xilxix_OnDied")