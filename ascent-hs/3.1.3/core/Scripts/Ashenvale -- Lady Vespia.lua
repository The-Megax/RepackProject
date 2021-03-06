--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LadyVespia_OnCombat(Unit, Event)
Unit:RegisterEvent("LadyVespia_AquaJet", 6000, 0)
Unit:RegisterEvent("LadyVespia_FrostboltVolley", 8000, 0)
end

function LadyVespia_AquaJet(pUnit, Event) 
pUnit:CastSpell(13586) 
end

function LadyVespia_FrostboltVolley(pUnit, Event) 
pUnit:CastSpell(8398) 
end

function LadyVespia_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LadyVespia_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LadyVespia_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10559, 1, "LadyVespia_OnCombat")
RegisterUnitEvent(10559, 2, "LadyVespia_OnLeaveCombat")
RegisterUnitEvent(10559, 3, "LadyVespia_OnKilledTarget")
RegisterUnitEvent(10559, 4, "LadyVespia_OnDied")