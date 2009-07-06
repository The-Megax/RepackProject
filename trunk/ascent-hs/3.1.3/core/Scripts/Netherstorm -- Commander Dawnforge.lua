--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Commander_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Commander_Cleave",1000,0)
    pUnit:RegisterEvent("Commander_Spellbreaker",1000,0)
end

function Commander_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35473,pUnit:GetClosestPlayer())
end

function Commander_Spellbreaker(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35871,pUnit:GetClosestPlayer())
end

function Commander_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Commander_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19831, 1, "Commander_OnEnterCombat")
RegisterUnitEvent (19831, 2, "Commander_OnLeaveCombat")
RegisterUnitEvent (19831, 4, "Commander_OnDied")