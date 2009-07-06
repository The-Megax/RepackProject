--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DappledStag_OnCombat(Unit, Event)
Unit:RegisterEvent("DappledStag_Butt", 8000, 0)
end

function DappledStag_Butt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(59110, pUnit:GetMainTank()) 
end

function DappledStag_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DappledStag_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DappledStag_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31236, 1, "DappledStag_OnCombat")
RegisterUnitEvent(31236, 2, "DappledStag_OnLeaveCombat")
RegisterUnitEvent(31236, 3, "DappledStag_OnKilledTarget")
RegisterUnitEvent(31236, 4, "DappledStag_OnDied")