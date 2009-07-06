--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Bjomolf_OnCombat(Unit, Event)
Unit:RegisterEvent("Bjomolf_GnawBone", 8000, 0)
end

function Bjomolf_GnawBone(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50046, pUnit:GetMainTank()) 
end

function Bjomolf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bjomolf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bjomolf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24516, 1, "Bjomolf_OnCombat")
RegisterUnitEvent(24516, 2, "Bjomolf_OnLeaveCombat")
RegisterUnitEvent(24516, 3, "Bjomolf_OnKilledTarget")
RegisterUnitEvent(24516, 4, "Bjomolf_OnDied")