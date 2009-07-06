--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ChieftainGurgleboggle_OnCombat(Unit, Event)
Unit:RegisterEvent("ChieftainGurgleboggle_FlipAttack", 8000, 0)
end

function ChieftainGurgleboggle_FlipAttack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50533, pUnit:GetMainTank()) 
end

function ChieftainGurgleboggle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChieftainGurgleboggle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChieftainGurgleboggle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25725, 1, "ChieftainGurgleboggle_OnCombat")
RegisterUnitEvent(25725, 2, "ChieftainGurgleboggle_OnLeaveCombat")
RegisterUnitEvent(25725, 3, "ChieftainGurgleboggle_OnKilledTarget")
RegisterUnitEvent(25725, 4, "ChieftainGurgleboggle_OnDied")