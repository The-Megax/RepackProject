--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TwilightKeeperMayna_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightKeeperMayna_ShadowWordPain", 2000, 2)
Unit:RegisterEvent("TwilightKeeperMayna_MindFlay", 6000, 0)
Unit:RegisterEvent("TwilightKeeperMayna_PsychicScream", 10000, 0)
end

function TwilightKeeperMayna_ShadowWordPain(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15654, pUnit:GetMainTank()) 
end

function TwilightKeeperMayna_MindFlay(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17165, pUnit:GetMainTank()) 
end

function TwilightKeeperMayna_PsychicScream(pUnit, Event) 
pUnit:FullCastSpellOnTarget(22884, pUnit:GetMainTank()) 
end

function TwilightKeeperMayna_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightKeeperMayna_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightKeeperMayna_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15200, 1, "TwilightKeeperMayna_OnCombat")
RegisterUnitEvent(15200, 2, "TwilightKeeperMayna_OnLeaveCombat")
RegisterUnitEvent(15200, 3, "TwilightKeeperMayna_OnKilledTarget")
RegisterUnitEvent(15200, 4, "TwilightKeeperMayna_OnDied")