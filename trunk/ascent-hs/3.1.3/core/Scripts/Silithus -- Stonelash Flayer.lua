--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function StonelashFlayer_OnCombat(Unit, Event)
Unit:RegisterEvent("StonelashFlayer_Thrash", 5000, 0)
Unit:RegisterEvent("StonelashFlayer_VenomSting", 8000, 0)
end

function StonelashFlayer_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function StonelashFlayer_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function StonelashFlayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StonelashFlayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StonelashFlayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11737, 1, "StonelashFlayer_OnCombat")
RegisterUnitEvent(11737, 2, "StonelashFlayer_OnLeaveCombat")
RegisterUnitEvent(11737, 3, "StonelashFlayer_OnKilledTarget")
RegisterUnitEvent(11737, 4, "StonelashFlayer_OnDied")