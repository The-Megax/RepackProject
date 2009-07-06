--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DreadRipper_OnCombat(Unit, Event)
Unit:RegisterEvent("DreadRipper_RendFlesh", 8000, 0)
end

function DreadRipper_RendFlesh(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3147, pUnit:GetMainTank()) 
end

function DreadRipper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DreadRipper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DreadRipper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4694, 1, "DreadRipper_OnCombat")
RegisterUnitEvent(4694, 2, "DreadRipper_OnLeaveCombat")
RegisterUnitEvent(4694, 3, "DreadRipper_OnKilledTarget")
RegisterUnitEvent(4694, 4, "DreadRipper_OnDied")