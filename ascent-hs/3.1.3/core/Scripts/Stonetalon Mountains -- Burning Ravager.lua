--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BurningRavager_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningRavager_FireShieldII", 4000, 2)
end

function BurningRavager_FireShieldII(pUnit, Event) 
pUnit:CastSpell(184) 
end

function BurningDestroyer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9053, pUnit:GetMainTank()) 
end

function BurningRavager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningRavager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningRavager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4037, 1, "BurningRavager_OnCombat")
RegisterUnitEvent(4037, 2, "BurningRavager_OnLeaveCombat")
RegisterUnitEvent(4037, 3, "BurningRavager_OnKilledTarget")
RegisterUnitEvent(4037, 4, "BurningRavager_OnDied")