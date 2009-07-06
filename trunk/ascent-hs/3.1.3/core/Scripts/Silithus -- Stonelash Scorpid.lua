--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function StonelashScorpid_OnCombat(Unit, Event)
Unit:RegisterEvent("StonelashScorpid_VenomSting", 8000, 0)
end

function StonelashScorpid_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function StonelashScorpid_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StonelashScorpid_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StonelashScorpid_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11735, 1, "StonelashScorpid_OnCombat")
RegisterUnitEvent(11735, 2, "StonelashScorpid_OnLeaveCombat")
RegisterUnitEvent(11735, 3, "StonelashScorpid_OnKilledTarget")
RegisterUnitEvent(11735, 4, "StonelashScorpid_OnDied")