--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Alandien_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Alandien_ShadowFury", 3000, 0)
	pUnit:RegisterEvent("Alandien_ManaBurn", 3000, 0)
end

function Alandien_ShadowFury(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39082,pUnit:GetClosestPlayer())
end

function Alandien_ManaBurn(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39262,pUnit:GetClosestPlayer())
end

function Alandien_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Alandien_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21171, 1, "Alandien_OnEnterCombat")
RegisterUnitEvent (21171, 2, "Alandien_OnLeaveCombat")
RegisterUnitEvent (21171, 4, "Alandien_OnDied")