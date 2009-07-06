--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GhostlyRaider_OnCombat(Unit, Event)
Unit:RegisterEvent("GhostlyRaider_ConcussiveShot", 10000, 0)
Unit:RegisterEvent("GhostlyRaider_Net", 11000, 0)
Unit:RegisterEvent("GhostlyRaider_Shoot", 6000, 0)
end

function GhostlyRaider_ConcussiveShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17174, pUnit:GetMainTank()) 
end

function GhostlyRaider_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5533, pUnit:GetMainTank()) 
end

function GhostlyRaider_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function GhostlyRaider_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GhostlyRaider_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GhostlyRaider_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11686, 1, "GhostlyRaider_OnCombat")
RegisterUnitEvent(11686, 2, "GhostlyRaider_OnLeaveCombat")
RegisterUnitEvent(11686, 3, "GhostlyRaider_OnKilledTarget")
RegisterUnitEvent(11686, 4, "GhostlyRaider_OnDied")