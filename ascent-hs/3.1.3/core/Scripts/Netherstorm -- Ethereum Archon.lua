--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Archon_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Archon_Flux",1000,0)
    pUnit:RegisterEvent("Archon_Intangible",1000,0)
    pUnit:RegisterEvent("Archon_Overspark",1000,0)
    pUnit:RegisterEvent("Archon_Shadow",1000,0)
end

function Archon_Flux(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35924,pUnit:GetClosestPlayer())
end

function Archon_Intangible(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36513,pUnit:GetClosestPlayer())
end

function Archon_Overspark(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35579,pUnit:GetClosestPlayer())
end

function Archon_Shadow(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36515,pUnit:GetClosestPlayer())
end

function Archon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Archon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20458, 1, "Archon_OnEnterCombat")
RegisterUnitEvent (20458, 2, "Archon_OnEnterCombat")
RegisterUnitEvent (20458, 4, "Archon_OnEnterCombat")