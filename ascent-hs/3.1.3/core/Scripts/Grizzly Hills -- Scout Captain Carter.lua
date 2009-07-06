--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ScoutCaptainCarter_OnCombat(Unit, Event)
Unit:RegisterEvent("ScoutCaptainCarter_DebilitatingStrike", 7000, 0)
end

function ScoutCaptainCarter_DebilitatingStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38621, pUnit:GetMainTank()) 
end

function ScoutCaptainCarter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScoutCaptainCarter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScoutCaptainCarter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27783, 1, "ScoutCaptainCarter_OnCombat")
RegisterUnitEvent(27783, 2, "ScoutCaptainCarter_OnLeaveCombat")
RegisterUnitEvent(27783, 3, "ScoutCaptainCarter_OnKilledTarget")
RegisterUnitEvent(27783, 4, "ScoutCaptainCarter_OnDied")