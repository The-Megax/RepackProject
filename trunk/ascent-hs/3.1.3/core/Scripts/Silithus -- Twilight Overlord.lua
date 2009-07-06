--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TwilightOverlord_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightOverlord_ChainLightning", 10000, 0)
Unit:RegisterEvent("TwilightOverlord_FireBlast", 6000, 0)
Unit:RegisterEvent("TwilightOverlord_Frostbolt", 8000, 0)
end

function TwilightOverlord_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12058, pUnit:GetMainTank()) 
end

function TwilightOverlord_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13339, pUnit:GetMainTank()) 
end

function TwilightOverlord_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function TwilightOverlord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightOverlord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightOverlord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15213, 1, "TwilightOverlord_OnCombat")
RegisterUnitEvent(15213, 2, "TwilightOverlord_OnLeaveCombat")
RegisterUnitEvent(15213, 3, "TwilightOverlord_OnKilledTarget")
RegisterUnitEvent(15213, 4, "TwilightOverlord_OnDied")