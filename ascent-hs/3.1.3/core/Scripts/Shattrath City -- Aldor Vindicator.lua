--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Vindicator_OnCombat(Unit, Event)
Unit:RegisterEvent("Vindicator_Banish", 7000, 0)
end

function Vindicator_Banish(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36642, pUnit:GetMainTank()) 
end

function Vindicator_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Vindicator_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Vindicator_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18549, 1, "Vindicator_OnCombat")
RegisterUnitEvent(18549, 2, "Vindicator_OnLeaveCombat")
RegisterUnitEvent(18549, 3, "Vindicator_OnKilledTarget")
RegisterUnitEvent(18549, 4, "Vindicator_OnDied")