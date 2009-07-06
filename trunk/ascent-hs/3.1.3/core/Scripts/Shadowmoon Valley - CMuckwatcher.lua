--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CMuckwatcher_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("CMuckwatcher_BattleShout", 40000, 0)
end

function CMuckwatcher_BattleShout(pUnit,Event)
	pUnit:CastSpell(38232)
end

function CMuckwatcher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CMuckwatcher_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19788, 1, "CMuckwatcher_OnEnterCombat")
RegisterUnitEvent(19788, 2, "CMuckwatcher_OnLeaveCombat")
RegisterUnitEvent(19788, 4, "CMuckwatcher_OnDied")