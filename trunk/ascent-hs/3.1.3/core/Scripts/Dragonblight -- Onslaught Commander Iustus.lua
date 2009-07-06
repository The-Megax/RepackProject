--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function OnslaughtCommanderIustus_OnCombat(Unit, Event)
Unit:RegisterEvent("OnslaughtCommanderIustus_Bloodthirst", 6000, 0)
Unit:RegisterEvent("OnslaughtCommanderIustus_Whirlwind", 7000, 0)
end

function OnslaughtCommanderIustus_Bloodthirst(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35949, pUnit:GetMainTank()) 
end

function OnslaughtCommanderIustus_Whirlwind(pUnit, Event) 
pUnit:CastSpell(48281) 
end

function OnslaughtCommanderIustus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OnslaughtCommanderIustus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OnslaughtCommanderIustus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27334, 1, "OnslaughtCommanderIustus_OnCombat")
RegisterUnitEvent(27334, 2, "OnslaughtCommanderIustus_OnLeaveCombat")
RegisterUnitEvent(27334, 3, "OnslaughtCommanderIustus_OnKilledTarget")
RegisterUnitEvent(27334, 4, "OnslaughtCommanderIustus_OnDied")