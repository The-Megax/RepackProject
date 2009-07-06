--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MagisterHawkhelm_OnCombat(Unit, Event)
Unit:RegisterEvent("MagisterHawkhelm_Shoot", 6000, 0)
end

function MagisterHawkhelm_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function MagisterHawkhelm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagisterHawkhelm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagisterHawkhelm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6647, 1, "MagisterHawkhelm_OnCombat")
RegisterUnitEvent(6647, 2, "MagisterHawkhelm_OnLeaveCombat")
RegisterUnitEvent(6647, 3, "MagisterHawkhelm_OnKilledTarget")
RegisterUnitEvent(6647, 4, "MagisterHawkhelm_OnDied")