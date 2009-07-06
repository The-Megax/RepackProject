--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NerubarSkitterer_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarSkitterer_PiercingBlow", 8000, 0)
end

function NerubarSkitterer_PiercingBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49749, pUnit:GetMainTank()) 
end

function NerubarSkitterer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarSkitterer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarSkitterer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24566, 1, "NerubarSkitterer_OnCombat")
RegisterUnitEvent(24566, 2, "NerubarSkitterer_OnLeaveCombat")
RegisterUnitEvent(24566, 3, "NerubarSkitterer_OnKilledTarget")
RegisterUnitEvent(24566, 4, "NerubarSkitterer_OnDied")