--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Inquisitor_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Inquisitor_Weakness",1000,0)
    pUnit:RegisterEvent("Inquisitor_Flamestrike",3000,0)
end

function Inquisitor_Weakness(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11980,pUnit:GetClosestPlayer())
end

function Inquisitor_Flamestrike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36040,pUnit:GetClosestPlayer())
end

function Inquisitor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Inquisitor_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19493, 1, "Inquisitor_OnEnterCombat")
RegisterUnitEvent (19493, 2, "Inquisitor_OnEnterCombat")
RegisterUnitEvent (19493, 4, "Inquisitor_OnEnterCombat")