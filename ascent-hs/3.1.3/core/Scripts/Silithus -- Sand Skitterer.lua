--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SandSkitterer_OnCombat(Unit, Event)
Unit:RegisterEvent("SandSkitterer_Poison", 10000, 0)
end

function SandSkitterer_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetRandomPlayer(0)) 
end

function SandSkitterer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SandSkitterer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SandSkitterer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11738, 1, "SandSkitterer_OnCombat")
RegisterUnitEvent(11738, 2, "SandSkitterer_OnLeaveCombat")
RegisterUnitEvent(11738, 3, "SandSkitterer_OnKilledTarget")
RegisterUnitEvent(11738, 4, "SandSkitterer_OnDied")