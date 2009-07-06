--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WoundedSkirmisher_OnCombat(Unit, Event)
Unit:RegisterEvent("WoundedSkirmisher_Cleave", 9000, 0)
Unit:RegisterEvent("WoundedSkirmisher_Hamstring", 10000, 0)
Unit:RegisterEvent("WoundedSkirmisher_MortalStrike", 7000, 0)
end

function WoundedSkirmisher_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function WoundedSkirmisher_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function WoundedSkirmisher_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function WoundedSkirmisher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WoundedSkirmisher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WoundedSkirmisher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27463, 1, "WoundedSkirmisher_OnCombat")
RegisterUnitEvent(27463, 2, "WoundedSkirmisher_OnLeaveCombat")
RegisterUnitEvent(27463, 3, "WoundedSkirmisher_OnKilledTarget")
RegisterUnitEvent(27463, 4, "WoundedSkirmisher_OnDied")