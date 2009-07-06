--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CSorceress_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("CSiren_Spell1", 20000, 0)
	pUnit:RegisterEvent("CSiren_Spell2", 6000, 0)
end

function CSorceress_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38026,pUnit:GetClosestPlayer())
end

function CSorceress_Spell2(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32011,pUnit:GetClosestPlayer())
end

function CSorceress_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CSorceress_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19767,1,"CSorceress_OnEnterCombat")
RegisterUnitEvent(19767,2,"CSorceress_OnLeaveCombat")
RegisterUnitEvent(19767,4,"CSorceress_OnDied")