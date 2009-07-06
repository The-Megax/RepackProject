--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TwilightMaster_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightMaster_ChainLightning", 10000, 0)
Unit:RegisterEvent("TwilightMaster_Frostbolt", 7000, 0)
end

function TwilightMaster_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12058, pUnit:GetMainTank()) 
end

function TwilightMaster_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function TwilightMaster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightMaster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightMaster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11883, 1, "TwilightMaster_OnCombat")
RegisterUnitEvent(11883, 2, "TwilightMaster_OnLeaveCombat")
RegisterUnitEvent(11883, 3, "TwilightMaster_OnKilledTarget")
RegisterUnitEvent(11883, 4, "TwilightMaster_OnDied")