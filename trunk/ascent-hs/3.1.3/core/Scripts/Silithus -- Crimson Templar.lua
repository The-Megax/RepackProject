--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CrimsonTemplar_OnCombat(Unit, Event)
Unit:RegisterEvent("CrimsonTemplar_FireballVolley", 10000, 0)
Unit:RegisterEvent("CrimsonTemplar_FlameBuffet", 8000, 0)
end

function CrimsonTemplar_FireballVolley(pUnit, Event) 
pUnit:CastSpell(11989) 
end

function CrimsonTemplar_FlameBuffet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16536, pUnit:GetMainTank()) 
end

function CrimsonTemplar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CrimsonTemplar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CrimsonTemplar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15209, 1, "CrimsonTemplar_OnCombat")
RegisterUnitEvent(15209, 2, "CrimsonTemplar_OnLeaveCombat")
RegisterUnitEvent(15209, 3, "CrimsonTemplar_OnKilledTarget")
RegisterUnitEvent(15209, 4, "CrimsonTemplar_OnDied")