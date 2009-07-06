--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function EntropicOoze_OnCombat(Unit, Event)
Unit:RegisterEvent("EntropicOoze_CrudeOoze", 7000, 0)
end

function EntropicOoze_CrudeOoze(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52334, pUnit:GetMainTank()) 
end

function EntropicOoze_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EntropicOoze_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EntropicOoze_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26366, 1, "EntropicOoze_OnCombat")
RegisterUnitEvent(26366, 2, "EntropicOoze_OnLeaveCombat")
RegisterUnitEvent(26366, 3, "EntropicOoze_OnKilledTarget")
RegisterUnitEvent(26366, 4, "EntropicOoze_OnDied")