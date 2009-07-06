--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Kuz_OnCombat(Unit, Event)
Unit:RegisterEvent("Kuz_FireBlast", 8000, 0)
Unit:RegisterEvent("Kuz_FrostNova", 10000, 0)
Unit:RegisterEvent("Kuz_Frostbolt", 4000, 0)
end

function Kuz_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20795, pUnit:GetMainTank()) 
end

function Kuz_FrostNova(pUnit, Event) 
pUnit:CastSpell(11831) 
end

function Kuz_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20792, pUnit:GetMainTank()) 
end

function Kuz_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Kuz_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Kuz_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3436, 1, "Kuz_OnCombat")
RegisterUnitEvent(3436, 2, "Kuz_OnLeaveCombat")
RegisterUnitEvent(3436, 3, "Kuz_OnKilledTarget")
RegisterUnitEvent(3436, 4, "Kuz_OnDied")