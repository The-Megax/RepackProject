--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SaltFlatsScavenger_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltFlatsScavenger_Execute", 6000, 0)
end

function SaltFlatsScavenger_Execute(pUnit, Event) 
if Unit:GetHealthEnemy() < 20 then
pUnit:FullCastSpellOnTarget(7160, pUnit:GetMainTank()) 
end
end

function SaltFlatsScavenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltFlatsScavenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltFlatsScavenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4154, 1, "SaltFlatsScavenger_OnCombat")
RegisterUnitEvent(4154, 2, "SaltFlatsScavenger_OnLeaveCombat")
RegisterUnitEvent(4154, 3, "SaltFlatsScavenger_OnKilledTarget")
RegisterUnitEvent(4154, 4, "SaltFlatsScavenger_OnDied")