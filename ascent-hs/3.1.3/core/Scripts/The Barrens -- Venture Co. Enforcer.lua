--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function VentureCoEnforcer_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoEnforcer_BattleShout", 2000, 1)
Unit:RegisterEvent("VentureCoEnforcer_Disarm", 10000, 0)
end

function VentureCoEnforcer_BattleShout(pUnit, Event) 
pUnit:CastSpell(9128) 
end

function VentureCoEnforcer_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function VentureCoEnforcer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoEnforcer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoEnforcer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3283, 1, "VentureCoEnforcer_OnCombat")
RegisterUnitEvent(3283, 2, "VentureCoEnforcer_OnLeaveCombat")
RegisterUnitEvent(3283, 3, "VentureCoEnforcer_OnKilledTarget")
RegisterUnitEvent(3283, 4, "VentureCoEnforcer_OnDied")