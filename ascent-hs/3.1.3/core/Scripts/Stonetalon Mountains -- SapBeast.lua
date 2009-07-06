--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SapBeast_OnCombat(Unit, Event)
Unit:RegisterEvent("SapBeast_Sap_Might", 10000, 0)
end

function SapBeast_Sap_Might(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7997, pUnit:GetMainTank()) 
end

function SapBeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SapBeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SapBeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4020, 1, "SapBeast_OnCombat")
RegisterUnitEvent(4020, 2, "SapBeast_OnLeaveCombat")
RegisterUnitEvent(4020, 3, "SapBeast_OnKilledTarget")
RegisterUnitEvent(4020, 4, "SapBeast_OnDied")