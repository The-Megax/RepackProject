--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Owatanka_OnCombat(Unit, Event)
Unit:RegisterEvent("Owatanka_ChainedBolt", 6000, 0)
end

function Owatanka_ChainedBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6254, pUnit:GetMainTank()) 
end

function Owatanka_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Owatanka_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Owatanka_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3473, 1, "Owatanka_OnCombat")
RegisterUnitEvent(3473, 2, "Owatanka_OnLeaveCombat")
RegisterUnitEvent(3473, 3, "Owatanka_OnKilledTarget")
RegisterUnitEvent(3473, 4, "Owatanka_OnDied")