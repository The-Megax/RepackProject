--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ThunderheadConsort_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderheadConsort_LightningBreath", 8000, 0)
end

function ThunderheadConsort_LightningBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36594, pUnit:GetMainTank()) 
end

function ThunderheadConsort_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderheadConsort_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderheadConsort_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6380, 1, "ThunderheadConsort_OnCombat")
RegisterUnitEvent(6380, 2, "ThunderheadConsort_OnLeaveCombat")
RegisterUnitEvent(6380, 3, "ThunderheadConsort_OnKilledTarget")
RegisterUnitEvent(6380, 4, "ThunderheadConsort_OnDied")