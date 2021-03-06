--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NedarLordofRhinos_OnCombat(Unit, Event)
Unit:RegisterEvent("NedarLordofRhinos_Shoot", 6000, 0)
end

function NedarLordofRhinos_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(41440, pUnit:GetMainTank()) 
end

function NedarLordofRhinos_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NedarLordofRhinos_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NedarLordofRhinos_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25801, 1, "NedarLordofRhinos_OnCombat")
RegisterUnitEvent(25801, 2, "NedarLordofRhinos_OnLeaveCombat")
RegisterUnitEvent(25801, 3, "NedarLordofRhinos_OnKilledTarget")
RegisterUnitEvent(25801, 4, "NedarLordofRhinos_OnDied")