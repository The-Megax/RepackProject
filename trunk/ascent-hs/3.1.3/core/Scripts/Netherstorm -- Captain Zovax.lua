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
    pUnit:RegisterEvent("Captain_Cleave",1000,0)
    pUnit:RegisterEvent("Captain_Toughen",1000,0)
end

function Captain_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15576,pUnit:GetClosestPlayer())
end

function Captain_Thougen(pUnit,Event)
    pUnit:CastSpell(33962)
end

function Capatain_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Capatain_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20727, 1, "Capatain_OnEnterCombat")
RegisterUnitEvent (20727, 2, "Capatain_OnLeaveCombat")
RegisterUnitEvent (20727, 4, "Capatain_OnDied")

