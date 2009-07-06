--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function LokOrcbane_OnCombat(Unit, Event)
Unit:RegisterEvent("LokOrcbane_Hamstring", 8000, 0)
end

function LokOrcbane_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function LokOrcbane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LokOrcbane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LokOrcbane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3435, 1, "LokOrcbane_OnCombat")
RegisterUnitEvent(3435, 2, "LokOrcbane_OnLeaveCombat")
RegisterUnitEvent(3435, 3, "LokOrcbane_OnKilledTarget")
RegisterUnitEvent(3435, 4, "LokOrcbane_OnDied")