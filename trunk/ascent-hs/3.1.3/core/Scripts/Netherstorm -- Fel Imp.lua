--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Imp_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Imp_Bolt",2000,0)
end

function Imp_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36227,pUnit:GetClosestPlayer())
end

function Imp_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Imp_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21135, 1, "Imp_OnEnterCombat")
RegisterUnitEvent (21135, 2, "Imp_OnLeaveCombat")
RegisterUnitEvent (21135, 4, "Imp_OnDied")
