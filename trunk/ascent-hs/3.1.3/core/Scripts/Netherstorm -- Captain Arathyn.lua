--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Captain_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Captain_Summon",1000,1)
    pUnit:RegisterEvent("Captain_Whirl",1000,0)
    pUnit:RegisterEvent("Captain_Wind",2000,0)
end

function Captain_Summon(pUnit,Event)
    pUnit:CastSpell(35882)
end

function Captain_Whirl(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15576,pUnit:GetClosestPlayer())
end

function Capatain_Wind(pUnit,Event)
    pUnit:FullCastSpellOnTarget(17207,pUnit:GetClosestPlayer())
end

function Capatain_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Capatain_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19635, 1, "Capatain_OnEnterCombat")
RegisterUnitEvent (19635, 2, "Capatain_OnLeaveCombat")
RegisterUnitEvent (19635, 4, "Capatain_OnDied")