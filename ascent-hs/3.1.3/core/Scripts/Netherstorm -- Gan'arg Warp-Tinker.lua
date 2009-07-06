--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Tinker_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Tinker_Bomb",2000,0)
    pUnit:RegisterEvent("Tinker_Steal",1000,0)
end

function Tinker_Bomb(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36846,pUnit:GetClosestPlayer())
end

function Tinker_Steal(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36208,pUnit:GetClosestPlayer())
end

function Tinker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Tinker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20285, 1, "Tinker_OnEnterCombat")
RegisterUnitEvent (20285, 2, "Tinker_OnLeaveCombat")
RegisterUnitEvent (20285, 4, "Tinker_OnDied")