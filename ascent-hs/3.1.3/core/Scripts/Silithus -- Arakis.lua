--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Arakis_OnCombat(Unit, Event)
Unit:RegisterEvent("Arakis_BerserkerCharge", 6000, 0)
end

function Arakis_BerserkerCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19471, pUnit:GetRandomPlayer(0)) 
end

function Arakis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Arakis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Arakis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15290, 1, "Arakis_OnCombat")
RegisterUnitEvent(15290, 2, "Arakis_OnLeaveCombat")
RegisterUnitEvent(15290, 3, "Arakis_OnKilledTarget")
RegisterUnitEvent(15290, 4, "Arakis_OnDied")