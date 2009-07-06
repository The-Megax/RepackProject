--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AberrantOwlbeast_OnCombat(Unit, Event)
Unit:RegisterEvent("AberrantOwlbeast_Moonfire", 6000, 0)
end

function AberrantOwlbeast_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31270, pUnit:GetRandomPlayer(0)) 
end

function AberrantOwlbeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AberrantOwlbeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AberrantOwlbeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17187, 1, "AberrantOwlbeast_OnCombat")
RegisterUnitEvent(17187, 2, "AberrantOwlbeast_OnLeaveCombat")
RegisterUnitEvent(17187, 3, "AberrantOwlbeast_OnKilledTarget")
RegisterUnitEvent(17187, 4, "AberrantOwlbeast_OnDied")