--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Knight_OnCombat(Unit, Event)
end

function Knight_Heal(pUnit, Event) 
pUnit:CastSpell(36476) 
end

function Knight_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function Knight_Breaker(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35871, pUnit:GetMainTank()) 
end

function Knight_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Knight_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Knight_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(21089, 1, "Knight_OnCombat")
RegisterUnitEvent(21089, 2, "Knight_OnLeaveCombat")
RegisterUnitEvent(21089, 3, "Knight_OnKilledTarget")
RegisterUnitEvent(21089, 4, "Knight_OnDied")