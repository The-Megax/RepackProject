--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DredgeStriker_OnCombat(Unit, Event)
Unit:RegisterEvent("DredgeStriker_Charge", 8000, 0)
end

function DredgeStriker_Charge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(22911, pUnit:GetRandomPlayer(0)) 
end

function DredgeStriker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DredgeStriker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DredgeStriker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11740, 1, "DredgeStriker_OnCombat")
RegisterUnitEvent(11740, 2, "DredgeStriker_OnLeaveCombat")
RegisterUnitEvent(11740, 3, "DredgeStriker_OnKilledTarget")
RegisterUnitEvent(11740, 4, "DredgeStriker_OnDied")