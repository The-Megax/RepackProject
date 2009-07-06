--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ConquestHoldBerserker_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldBerserker_BattleShout", 4000, 1)
end

function ConquestHoldBerserker_BattleShout(pUnit, Event) 
pUnit:CastSpell(31403) 
end

function ConquestHoldBerserker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldBerserker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldBerserker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27500, 1, "ConquestHoldBerserker_OnCombat")
RegisterUnitEvent(27500, 2, "ConquestHoldBerserker_OnLeaveCombat")
RegisterUnitEvent(27500, 3, "ConquestHoldBerserker_OnKilledTarget")
RegisterUnitEvent(27500, 4, "ConquestHoldBerserker_OnDied")