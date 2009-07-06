--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CultistNecrolyte_OnCombat(Unit, Event)
Unit:RegisterEvent("CultistNecrolyte_CurseofAgony", 10000, 0)
Unit:RegisterEvent("CultistNecrolyte_ShadowBolt", 7000, 0)
end

function CultistNecrolyte_CurseofAgony(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18266, pUnit:GetMainTank()) 
end

function CultistNecrolyte_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function CultistNecrolyte_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CultistNecrolyte_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CultistNecrolyte_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25651, 1, "CultistNecrolyte_OnCombat")
RegisterUnitEvent(25651, 2, "CultistNecrolyte_OnLeaveCombat")
RegisterUnitEvent(25651, 3, "CultistNecrolyte_OnKilledTarget")
RegisterUnitEvent(25651, 4, "CultistNecrolyte_OnDied")