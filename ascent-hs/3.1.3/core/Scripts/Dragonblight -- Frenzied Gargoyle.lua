--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FrenziedGargoyle_OnCombat(Unit, Event)
Unit:RegisterEvent("FrenziedGargoyle_GargoyleStrike", 6500, 0)
end

function FrenziedGargoyle_GargoyleStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31664, pUnit:GetMainTank()) 
end

function FrenziedGargoyle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrenziedGargoyle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrenziedGargoyle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27691, 1, "FrenziedGargoyle_OnCombat")
RegisterUnitEvent(27691, 2, "FrenziedGargoyle_OnLeaveCombat")
RegisterUnitEvent(27691, 3, "FrenziedGargoyle_OnKilledTarget")
RegisterUnitEvent(27691, 4, "FrenziedGargoyle_OnDied")