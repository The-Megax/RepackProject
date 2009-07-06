--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ScorpidDunestalker_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorpidDunestalker_VenomSting", 10000, 0)
end

function ScorpidDunestalker_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function ScorpidDunestalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorpidDunestalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorpidDunestalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5424, 1, "ScorpidDunestalker_OnCombat")
RegisterUnitEvent(5424, 2, "ScorpidDunestalker_OnLeaveCombat")
RegisterUnitEvent(5424, 3, "ScorpidDunestalker_OnKilledTarget")
RegisterUnitEvent(5424, 4, "ScorpidDunestalker_OnDied")