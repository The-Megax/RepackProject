--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GatekeeperRageroar_OnCombat(Unit, Event)
Unit:RegisterEvent("GatekeeperRageroar_EntanglingRoots", 10000, 0)
end

function GatekeeperRageroar_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12747, pUnit:GetMainTank()) 
end

function GatekeeperRageroar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GatekeeperRageroar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GatekeeperRageroar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6651, 1, "GatekeeperRageroar_OnCombat")
RegisterUnitEvent(6651, 2, "GatekeeperRageroar_OnLeaveCombat")
RegisterUnitEvent(6651, 3, "GatekeeperRageroar_OnKilledTarget")
RegisterUnitEvent(6651, 4, "GatekeeperRageroar_OnDied")