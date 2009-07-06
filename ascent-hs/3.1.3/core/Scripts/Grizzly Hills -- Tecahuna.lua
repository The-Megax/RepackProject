--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Tecahuna_OnCombat(Unit, Event)
Unit:RegisterEvent("Tecahuna_TecahunaVenomSpit", 9000, 0)
end

function Tecahuna_TecahunaVenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47629, pUnit:GetMainTank()) 
end

function Tecahuna_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Tecahuna_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Tecahuna_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26865, 1, "Tecahuna_OnCombat")
RegisterUnitEvent(26865, 2, "Tecahuna_OnLeaveCombat")
RegisterUnitEvent(26865, 3, "Tecahuna_OnKilledTarget")
RegisterUnitEvent(26865, 4, "Tecahuna_OnDied")