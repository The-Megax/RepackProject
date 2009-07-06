--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]
function VenomtailScorpid_OnCombat(Unit, Event)
Unit:RegisterEvent("VenomtailScorpid_VenomSting", 10000, 0)
end

function VenomtailScorpid_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function VenomtailScorpid_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VenomtailScorpid_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VenomtailScorpid_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3127, 1, "VenomtailScorpid_OnCombat")
RegisterUnitEvent(3127, 2, "VenomtailScorpid_OnLeaveCombat")
RegisterUnitEvent(3127, 3, "VenomtailScorpid_OnKilledTarget")
RegisterUnitEvent(3127, 4, "VenomtailScorpid_OnDied")