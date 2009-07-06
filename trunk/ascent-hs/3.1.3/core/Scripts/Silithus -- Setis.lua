--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Setis_OnCombat(Unit, Event)
Unit:RegisterEvent("Setis_CrowdPummel", 8000, 0)
Unit:RegisterEvent("Setis_WarStomp", 10000, 0)
end

function Setis_CrowdPummel(pUnit, Event) 
pUnit:CastSpell(10887) 
end

function Setis_WarStomp(pUnit, Event) 
pUnit:CastSpell(16727) 
end

function Setis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Setis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Setis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14471, 1, "Setis_OnCombat")
RegisterUnitEvent(14471, 2, "Setis_OnLeaveCombat")
RegisterUnitEvent(14471, 3, "Setis_OnKilledTarget")
RegisterUnitEvent(14471, 4, "Setis_OnDied")