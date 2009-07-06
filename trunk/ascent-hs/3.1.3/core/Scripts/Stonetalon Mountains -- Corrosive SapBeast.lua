--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CorrosiveSapBeast_OnCombat(Unit, Event)
Unit:RegisterEvent("CorrosiveSapBeast_CorrosivePoison", 10000, 0)
end

function CorrosiveSapBeast_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3397, pUnit:GetMainTank()) 
end

function CorrosiveSapBeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorrosiveSapBeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorrosiveSapBeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4021, 1, "CorrosiveSapBeast_OnCombat")
RegisterUnitEvent(4021, 2, "CorrosiveSapBeast_OnLeaveCombat")
RegisterUnitEvent(4021, 3, "CorrosiveSapBeast_OnKilledTarget")
RegisterUnitEvent(4021, 4, "CorrosiveSapBeast_OnDied")