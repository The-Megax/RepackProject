--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DunemaulOgreMage_OnCombat(Unit, Event)
Unit:RegisterEvent("DunemaulOgreMage_Bloodlust", 10000, 0)
Unit:RegisterEvent("DunemaulOgreMage_Slow", 15000, 0)
Unit:RegisterEvent("DunemaulOgreMage_Fireball", 5000, 0)
end

function DunemaulOgreMage_Bloodlust(pUnit, Event) 
pUnit:CastSpell(6742) 
end

function DunemaulOgreMage_Slow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11436, pUnit:GetMainTank()) 
end

function DunemaulOgreMage_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function DunemaulOgreMage_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DunemaulOgreMage_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DunemaulOgreMage_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5473, 1, "DunemaulOgreMage_OnCombat")
RegisterUnitEvent(5473, 2, "DunemaulOgreMage_OnLeaveCombat")
RegisterUnitEvent(5473, 3, "DunemaulOgreMage_OnKilledTarget")
RegisterUnitEvent(5473, 4, "DunemaulOgreMage_OnDied")