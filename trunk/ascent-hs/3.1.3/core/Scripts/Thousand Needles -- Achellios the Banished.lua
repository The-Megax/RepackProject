--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AchelliostheBanished_OnCombat(Unit, Event)
Unit:RegisterEvent("AchelliostheBanished_BattleShout", 1000, 1)
end

function AchelliostheBanished_BattleShout(pUnit, Event) 
pUnit:CastSpell(6192) 
end

function AchelliostheBanished_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AchelliostheBanished_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AchelliostheBanished_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5933, 1, "AchelliostheBanished_OnCombat")
RegisterUnitEvent(5933, 2, "AchelliostheBanished_OnLeaveCombat")
RegisterUnitEvent(5933, 3, "AchelliostheBanished_OnKilledTarget")
RegisterUnitEvent(5933, 4, "AchelliostheBanished_OnDied")