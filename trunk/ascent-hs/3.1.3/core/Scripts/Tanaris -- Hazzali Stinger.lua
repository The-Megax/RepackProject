--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HazzaliStinger_OnCombat(Unit, Event)
Unit:RegisterEvent("HazzaliStinger_VenomSting", 10000, 0)
end

function HazzaliStinger_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function HazzaliStinger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HazzaliStinger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HazzaliStinger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5450, 1, "HazzaliStinger_OnCombat")
RegisterUnitEvent(5450, 2, "HazzaliStinger_OnLeaveCombat")
RegisterUnitEvent(5450, 3, "HazzaliStinger_OnKilledTarget")
RegisterUnitEvent(5450, 4, "HazzaliStinger_OnDied")