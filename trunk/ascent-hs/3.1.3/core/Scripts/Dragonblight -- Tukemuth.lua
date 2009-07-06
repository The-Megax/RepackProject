--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Tukemuth_OnCombat(Unit, Event)
Unit:RegisterEvent("Tukemuth_Trample", 10000, 0)
Unit:RegisterEvent("Tukemuth_TuskStrike", 8000, 0)
end

function Tukemuth_Trample(pUnit, Event) 
pUnit:CastSpell(57066) 
end

function Tukemuth_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function Tukemuth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Tukemuth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Tukemuth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32400, 1, "Tukemuth_OnCombat")
RegisterUnitEvent(32400, 2, "Tukemuth_OnLeaveCombat")
RegisterUnitEvent(32400, 3, "Tukemuth_OnKilledTarget")
RegisterUnitEvent(32400, 4, "Tukemuth_OnDied")