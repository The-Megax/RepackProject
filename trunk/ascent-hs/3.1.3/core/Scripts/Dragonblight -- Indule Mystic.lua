--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function InduleMystic_OnCombat(Unit, Event)
Unit:RegisterEvent("InduleMystic_MysticalBolt", 6000, 0)
end

function InduleMystic_MysticalBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51787, pUnit:GetMainTank()) 
end

function InduleMystic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InduleMystic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InduleMystic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26336, 1, "InduleMystic_OnCombat")
RegisterUnitEvent(26336, 2, "InduleMystic_OnLeaveCombat")
RegisterUnitEvent(26336, 3, "InduleMystic_OnKilledTarget")
RegisterUnitEvent(26336, 4, "InduleMystic_OnDied")