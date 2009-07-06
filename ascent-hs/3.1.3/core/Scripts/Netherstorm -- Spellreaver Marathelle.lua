--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Marathelle_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Marathelle_Tempest",4500,0)
    pUnit:RegisterEvent("Marathelle_Ring",20000,0)
end

function Marathelle_Tempest(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35843,pUnit:GetClosestPlayer())
end   

function Marathelle_Ring(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35831,pUnit:GetRandomPlayer(0))
end

function Marathelle_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Marathelle_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19926, 1, "Marathelle_OnEnterCombat")
RegisterUnitEvent (19926, 2, "Marathelle_OnLeaveCombat")
RegisterUnitEvent (19926, 4, "Marathelle_OnDied")