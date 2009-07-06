--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WestfallBrigadeMarine_OnCombat(Unit, Event)
Unit:RegisterEvent("WestfallBrigadeMarine_ConcussionBlow", 9000, 0)
Unit:RegisterEvent("WestfallBrigadeMarine_SunderArmor", 5000, 0)
end

function WestfallBrigadeMarine_ConcussionBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52719, pUnit:GetMainTank()) 
end

function WestfallBrigadeMarine_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50307, pUnit:GetMainTank()) 
end

function WestfallBrigadeMarine_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WestfallBrigadeMarine_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WestfallBrigadeMarine_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27501, 1, "WestfallBrigadeMarine_OnCombat")
RegisterUnitEvent(27501, 2, "WestfallBrigadeMarine_OnLeaveCombat")
RegisterUnitEvent(27501, 3, "WestfallBrigadeMarine_OnKilledTarget")
RegisterUnitEvent(27501, 4, "WestfallBrigadeMarine_OnDied")