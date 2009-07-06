--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WarsongMarksman_OnCombat(Unit, Event)
Unit:RegisterEvent("WarsongMarksman_Enrage", 8000, 0)
Unit:RegisterEvent("WarsongMarksman_Shoot", 6000, 0)
end

function WarsongMarksman_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function WarsongMarksman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45578, pUnit:GetMainTank()) 
end

function WarsongMarksman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarsongMarksman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarsongMarksman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25244, 1, "WarsongMarksman_OnCombat")
RegisterUnitEvent(25244, 2, "WarsongMarksman_OnLeaveCombat")
RegisterUnitEvent(25244, 3, "WarsongMarksman_OnKilledTarget")
RegisterUnitEvent(25244, 4, "WarsongMarksman_OnDied")