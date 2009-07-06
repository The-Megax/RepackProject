--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Scavengebot005B6_OnCombat(Unit, Event)
Unit:RegisterEvent("Scavengebot005B6_CuttingLaser", 7000, 0)
end

function Scavengebot005B6_CuttingLaser(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49945, pUnit:GetMainTank()) 
end

function Scavengebot005B6_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Scavengebot005B6_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Scavengebot005B6_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25792, 1, "Scavengebot005B6_OnCombat")
RegisterUnitEvent(25792, 2, "Scavengebot005B6_OnLeaveCombat")
RegisterUnitEvent(25792, 3, "Scavengebot005B6_OnKilledTarget")
RegisterUnitEvent(25792, 4, "Scavengebot005B6_OnDied")