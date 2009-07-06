--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WanderingProtector_OnCombat(Unit, Event)
Unit:RegisterEvent("WanderingProtector_EntanglingRoots", 10000, 0)
Unit:RegisterEvent("WanderingProtector_WarStomp", 6000, 0)
end

function WanderingProtector_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11922, pUnit:GetMainTank()) 
end

function WanderingProtector_WarStomp(pUnit, Event) 
pUnit:CastSpell(45) 
end

function WanderingProtector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WanderingProtector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WanderingProtector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12836, 1, "WanderingProtector_OnCombat")
RegisterUnitEvent(12836, 2, "WanderingProtector_OnLeaveCombat")
RegisterUnitEvent(12836, 3, "WanderingProtector_OnKilledTarget")
RegisterUnitEvent(12836, 4, "WanderingProtector_OnDied")