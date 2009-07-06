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
end

function Captain_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15576,pUnit:GetClosestPlayer())
end

function Capatain_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Capatain_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20985, 1, "Capatain_OnEnterCombat")
RegisterUnitEvent (20985, 2, "Capatain_OnLeaveCombat")
RegisterUnitEvent (20985, 4, "Capatain_OnDied")
