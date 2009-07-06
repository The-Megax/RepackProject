--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SnowplainShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowplainShaman_SearingTotem", 3000, 1)
end

function SnowplainShaman_SearingTotem(pUnit, Event) 
pUnit:CastSpell(39591) 
end

function SnowplainShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowplainShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowplainShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27279, 1, "SnowplainShaman_OnCombat")
RegisterUnitEvent(27279, 2, "SnowplainShaman_OnLeaveCombat")
RegisterUnitEvent(27279, 3, "SnowplainShaman_OnKilledTarget")
RegisterUnitEvent(27279, 4, "SnowplainShaman_OnDied")