--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GammothratheTormentor_OnCombat(Unit, Event)
Unit:RegisterEvent("GammothratheTormentor_MagnataurCharge", 10000, 0)
Unit:RegisterEvent("GammothratheTormentor_TuskStrike", 8000, 0)
end

function GammothratheTormentor_MagnataurCharge(pUnit, Event) 
pUnit:CastSpell(50413) 
end

function GammothratheTormentor_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function GammothratheTormentor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GammothratheTormentor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GammothratheTormentor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25789, 1, "GammothratheTormentor_OnCombat")
RegisterUnitEvent(25789, 2, "GammothratheTormentor_OnLeaveCombat")
RegisterUnitEvent(25789, 3, "GammothratheTormentor_OnKilledTarget")
RegisterUnitEvent(25789, 4, "GammothratheTormentor_OnDied")