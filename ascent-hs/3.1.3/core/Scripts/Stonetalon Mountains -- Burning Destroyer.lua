--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BurningDestroyer_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningDestroyer_AreaBurn", 3000, 2)
Unit:RegisterEvent("BurningDestroyer_Fireball", 8000, 0)
end

function BurningDestroyer_AreaBurn(pUnit, Event) 
pUnit:CastSpell(8000) 
end

function BurningDestroyer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function BurningDestroyer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningDestroyer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningDestroyer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4038, 1, "BurningDestroyer_OnCombat")
RegisterUnitEvent(4038, 2, "BurningDestroyer_OnLeaveCombat")
RegisterUnitEvent(4038, 3, "BurningDestroyer_OnKilledTarget")
RegisterUnitEvent(4038, 4, "BurningDestroyer_OnDied")