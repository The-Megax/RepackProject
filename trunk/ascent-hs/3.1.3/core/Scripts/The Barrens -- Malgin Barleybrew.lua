--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function MalginBarleybrew_OnCombat(Unit, Event)
Unit:RegisterEvent("MalginBarleybrew_BladeFlurry", 4000, 1)
Unit:RegisterEvent("MalginBarleybrew_BattleShout", 6000, 1)
end

function MalginBarleybrew_BladeFlurry(pUnit, Event) 
pUnit:CastSpell(3631) 
end

function MalginBarleybrew_BattleShout(pUnit, Event) 
pUnit:CastSpell(5242) 
end

function MalginBarleybrew_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MalginBarleybrew_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MalginBarleybrew_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5848, 1, "MalginBarleybrew_OnCombat")
RegisterUnitEvent(5848, 2, "MalginBarleybrew_OnLeaveCombat")
RegisterUnitEvent(5848, 3, "MalginBarleybrew_OnKilledTarget")
RegisterUnitEvent(5848, 4, "MalginBarleybrew_OnDied")