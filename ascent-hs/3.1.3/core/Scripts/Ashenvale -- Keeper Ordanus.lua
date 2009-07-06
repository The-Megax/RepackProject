--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function KeeperOrdanus_OnCombat(Unit, Event)
Unit:RegisterEvent("KeeperOrdanus_EntanglingRoots", 11000, 0)
Unit:RegisterEvent("KeeperOrdanus_LightningBolt", 8000, 0)
end

function KeeperOrdanus_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12747, pUnit:GetMainTank()) 
end

function KeeperOrdanus_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function KeeperOrdanus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KeeperOrdanus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KeeperOrdanus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4273, 1, "KeeperOrdanus_OnCombat")
RegisterUnitEvent(4273, 2, "KeeperOrdanus_OnLeaveCombat")
RegisterUnitEvent(4273, 3, "KeeperOrdanus_OnKilledTarget")
RegisterUnitEvent(4273, 4, "KeeperOrdanus_OnDied")