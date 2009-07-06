--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ScorpidDuneburrower_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorpidDuneburrower_VenomSting", 10000, 0)
end

function ScorpidDuneburrower_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function ScorpidDuneburrower_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorpidDuneburrower_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorpidDuneburrower_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7803, 1, "ScorpidDuneburrower_OnCombat")
RegisterUnitEvent(7803, 2, "ScorpidDuneburrower_OnLeaveCombat")
RegisterUnitEvent(7803, 3, "ScorpidDuneburrower_OnKilledTarget")
RegisterUnitEvent(7803, 4, "ScorpidDuneburrower_OnDied")