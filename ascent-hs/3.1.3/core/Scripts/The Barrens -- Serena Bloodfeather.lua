--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SerenaBloodfeather_OnCombat(Unit, Event)
Unit:RegisterEvent("SerenaBloodfeather_BloodHowl", 10000, 0)
end

function SerenaBloodfeather_BloodHowl(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3264, pUnit:GetMainTank()) 
end

function SerenaBloodfeather_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SerenaBloodfeather_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SerenaBloodfeather_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3452, 1, "SerenaBloodfeather_OnCombat")
RegisterUnitEvent(3452, 2, "SerenaBloodfeather_OnLeaveCombat")
RegisterUnitEvent(3452, 3, "SerenaBloodfeather_OnKilledTarget")
RegisterUnitEvent(3452, 4, "SerenaBloodfeather_OnDied")