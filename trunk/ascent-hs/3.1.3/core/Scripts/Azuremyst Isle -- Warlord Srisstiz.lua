--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WarlordSrisstiz_OnCombat(Unit, Event)
Unit:RegisterEvent("WarlordSrisstiz_WateryStrike", 6000, 0)
end

function WarlordSrisstiz_WateryStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31275, pUnit:GetMainTank()) 
end

function WarlordSrisstiz_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarlordSrisstiz_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarlordSrisstiz_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17298, 1, "WarlordSrisstiz_OnCombat")
RegisterUnitEvent(17298, 2, "WarlordSrisstiz_OnLeaveCombat")
RegisterUnitEvent(17298, 3, "WarlordSrisstiz_OnKilledTarget")
RegisterUnitEvent(17298, 4, "WarlordSrisstiz_OnDied")