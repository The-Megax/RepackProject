--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function KolkarPackRunner_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarPackRunner_BattleShout", 4000, 1)
end

function KolkarPackRunner_BattleShout(pUnit, Event) 
pUnit:CastSpell(9128) 
end

function KolkarPackRunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarPackRunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarPackRunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3274, 1, "KolkarPackRunner_OnCombat")
RegisterUnitEvent(3274, 2, "KolkarPackRunner_OnLeaveCombat")
RegisterUnitEvent(3274, 3, "KolkarPackRunner_OnKilledTarget")
RegisterUnitEvent(3274, 4, "KolkarPackRunner_OnDied")