--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CMForeman_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("CMForeman_Enrage", 5000, 0)
end

function CMForeman_Enrage(pUnit,Event)
	pUnit:CastSpell(40743)
end

function CMForeman_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CMForeman_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23305, 1, "CMForeman_OnEnterCombat")
RegisterUnitEvent(23305, 2, "CMForeman_OnLeaveCombat")
RegisterUnitEvent(23305, 4, "CMForeman_OnDied")