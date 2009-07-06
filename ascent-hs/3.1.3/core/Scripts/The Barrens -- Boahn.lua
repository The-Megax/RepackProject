--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Boahn_OnCombat(Unit, Event)
Unit:RegisterEvent("Boahn_LightningBolt", 8000, 0)
end

function Boahn_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function Boahn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Boahn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Boahn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3672, 1, "Boahn_OnCombat")
RegisterUnitEvent(3672, 2, "Boahn_OnLeaveCombat")
RegisterUnitEvent(3672, 3, "Boahn_OnKilledTarget")
RegisterUnitEvent(3672, 4, "Boahn_OnDied")