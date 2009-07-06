--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function JinZallahtheSandbringer_OnCombat(Unit, Event)
Unit:RegisterEvent("JinZallahtheSandbringer_DustCloud", 15000, 0)
Unit:RegisterEvent("JinZallahtheSandbringer_LightningBolt", 8000, 0)
Unit:RegisterEvent("JinZallahtheSandbringer_SandStorms", 10000, 1)
end

function JinZallahtheSandbringer_DustCloud(pUnit, Event) 
pUnit:CastSpell(7272) 
end

function JinZallahtheSandbringer_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20824, pUnit:GetMainTank()) 
end

function JinZallahtheSandbringer_SandStorms(pUnit, Event) 
pUnit:CastSpell(10132) 
end

function JinZallahtheSandbringer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function JinZallahtheSandbringer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function JinZallahtheSandbringer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8200, 1, "JinZallahtheSandbringer_OnCombat")
RegisterUnitEvent(8200, 2, "JinZallahtheSandbringer_OnLeaveCombat")
RegisterUnitEvent(8200, 3, "JinZallahtheSandbringer_OnKilledTarget")
RegisterUnitEvent(8200, 4, "JinZallahtheSandbringer_OnDied")