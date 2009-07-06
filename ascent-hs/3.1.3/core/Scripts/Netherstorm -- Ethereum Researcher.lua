--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Researcher_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Researcher_Energy",1000,0)
    pUnit:RegisterEvent("Researcher_Surge",1000,0)
    pUnit:RegisterEvent("Researcher_Bolt",3000,0)
end

function Researcher_Energy(pUnit,Event)
    pUnit:CastSpell(16592)
end

function Researcher_Surge(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36508,pUnit:GetClosestPlayer())
end

function Researcher_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9532,pUnit:GetClosestPlayer())
end

function Researcher_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Researcher_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20456, 1, "Researcher_OnEnterCombat")
RegisterUnitEvent (20456, 2, "Researcher_OnLeaveCombat")
RegisterUnitEvent (20456, 4, "Researcher_OnDied")
