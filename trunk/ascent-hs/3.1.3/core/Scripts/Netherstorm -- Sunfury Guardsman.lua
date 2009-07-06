--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Guardsman_OnCombat(Unit, Event)
Unit:RegisterEvent("Guardsman_Enrage", 25000, 0)
Unit:RegisterEvent("Guardsman_Mark", 10000, 0)
end

function Guardsman_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function Guardsman_Mark(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35877, pUnit:GetMainTank()) 
end

function Guardsman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Guardsman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Guardsman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18850, 1, "Guardsman_OnCombat")
RegisterUnitEvent(18850, 2, "Guardsman_OnLeaveCombat")
RegisterUnitEvent(18850, 3, "Guardsman_OnKilledTarget")
RegisterUnitEvent(18850, 4, "Guardsman_OnDied")