--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Chilltusk_OnCombat(Unit, Event)
Unit:RegisterEvent("Chilltusk_IceSlash", 6000, 0)
Unit:RegisterEvent("Chilltusk_TuskStrike", 5000, 0)
end

function Chilltusk_IceSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51878, pUnit:GetMainTank()) 
end

function Chilltusk_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function Chilltusk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Chilltusk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Chilltusk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27005, 1, "Chilltusk_OnCombat")
RegisterUnitEvent(27005, 2, "Chilltusk_OnLeaveCombat")
RegisterUnitEvent(27005, 3, "Chilltusk_OnKilledTarget")
RegisterUnitEvent(27005, 4, "Chilltusk_OnDied")