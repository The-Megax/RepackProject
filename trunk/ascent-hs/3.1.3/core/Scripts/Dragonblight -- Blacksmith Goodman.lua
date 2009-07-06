--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BlacksmithGoodman_OnCombat(Unit, Event)
Unit:RegisterEvent("BlacksmithGoodman_CrushArmor", 6000, 0)
Unit:RegisterEvent("BlacksmithGoodman_SkullCrack", 8000, 0)
end

function BlacksmithGoodman_CrushArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33661, pUnit:GetMainTank()) 
end

function BlacksmithGoodman_SkullCrack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15621, pUnit:GetMainTank()) 
end

function BlacksmithGoodman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlacksmithGoodman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlacksmithGoodman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27234, 1, "BlacksmithGoodman_OnCombat")
RegisterUnitEvent(27234, 2, "BlacksmithGoodman_OnLeaveCombat")
RegisterUnitEvent(27234, 3, "BlacksmithGoodman_OnKilledTarget")
RegisterUnitEvent(27234, 4, "BlacksmithGoodman_OnDied")