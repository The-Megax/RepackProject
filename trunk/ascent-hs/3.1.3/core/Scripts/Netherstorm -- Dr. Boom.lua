--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Boom_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Boom_Dynamite",1000,0)
end

function Boom_Dynamite(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35276,pUnit:GetClosestPlayer())
end

function Boom_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Boom_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20284, 1, "Boom_OnEnterCombat")
RegisterUnitEvent (20284, 2, "Boom_OnLeaveCombat")
RegisterUnitEvent (20284, 4, "Boom_OnDied")