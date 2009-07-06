--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function TivaxtheBreaker_OnCombat(Unit, Event)
Unit:RegisterEvent("TivaxtheBreaker_FireBlast", 5000, 0)
Unit:RegisterEvent("TivaxtheBreaker_Scorch", 6000, 0)
end

function TivaxtheBreaker_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20795, pUnit:GetMainTank()) 
end

function TivaxtheBreaker_Scorch(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13878, pUnit:GetMainTank()) 
end

function TivaxtheBreaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TivaxtheBreaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TivaxtheBreaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26770, 1, "TivaxtheBreaker_OnCombat")
RegisterUnitEvent(26770, 2, "TivaxtheBreaker_OnLeaveCombat")
RegisterUnitEvent(26770, 3, "TivaxtheBreaker_OnKilledTarget")
RegisterUnitEvent(26770, 4, "TivaxtheBreaker_OnDied")