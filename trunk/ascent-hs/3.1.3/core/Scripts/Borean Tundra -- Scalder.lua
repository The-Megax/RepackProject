--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Scalder_OnCombat(Unit, Event)
Unit:RegisterEvent("Scalder_ScaldingBlast", 8000, 0)
Unit:RegisterEvent("Scalder_WaterBolt", 5500, 0)
end

function Scalder_ScaldingBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50257, pUnit:GetMainTank()) 
end

function Scalder_WaterBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32011, pUnit:GetMainTank()) 
end

function Scalder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Scalder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Scalder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25226, 1, "Scalder_OnCombat")
RegisterUnitEvent(25226, 2, "Scalder_OnLeaveCombat")
RegisterUnitEvent(25226, 3, "Scalder_OnKilledTarget")
RegisterUnitEvent(25226, 4, "Scalder_OnDied")