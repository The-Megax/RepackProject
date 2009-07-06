--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Petrifier_OnCombat(Unit, Event)
Unit:RegisterEvent("Petrifier_Glare", 10000, 0)
end

function Petrifier_Glare(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32905, pUnit:GetMainTank()) 
end

function Petrifier_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Petrifier_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Petrifier_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(21854, 1, "Petrifier_OnCombat")
RegisterUnitEvent(21854, 2, "Petrifier_OnLeaveCombat")
RegisterUnitEvent(21854, 3, "Petrifier_OnKilledTarget")
RegisterUnitEvent(21854, 4, "Petrifier_OnDied")