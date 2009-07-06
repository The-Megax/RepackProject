--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Bruiser_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Bruiser_Net",1000,0)
end

function Bruiser_Net(pUnit,Event)
    pUnit:FullCastSpellOnTarget(12024, pUnit:GetClosestPlayer())
end

function Bruiser_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Bruiser_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20484, 1, "Bruiser_OnEnterCombat")
RegisterUnitEvent (20484, 2, "Bruiser_OnLeaveCombat")
RegisterUnitEvent (20484, 4, "Bruiser_OnDied")
