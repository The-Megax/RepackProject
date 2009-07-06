--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Scavengebot004A8_OnCombat(Unit, Event)
Unit:RegisterEvent("Scavengebot004A8_CuttingLaser", 7000, 0)
end

function Scavengebot004A8_CuttingLaser(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49945, pUnit:GetMainTank()) 
end

function Scavengebot004A8_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Scavengebot004A8_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Scavengebot004A8_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25752, 1, "Scavengebot004A8_OnCombat")
RegisterUnitEvent(25752, 2, "Scavengebot004A8_OnLeaveCombat")
RegisterUnitEvent(25752, 3, "Scavengebot004A8_OnKilledTarget")
RegisterUnitEvent(25752, 4, "Scavengebot004A8_OnDied")