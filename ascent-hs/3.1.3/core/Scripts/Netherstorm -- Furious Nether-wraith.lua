--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Wraith_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Wraith_Bolt",1000,0)
    pUnit:RegisterEvent("Wraith_Blast",6000,0)
end

function Wraith_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(39337,pUnit:GetClosestPlayer())
end

function Wraith_Blast(pUnit,Event)
    pUnit:FullCastSpellOnTarget(38205,pUnit:GetClosestPlayer())
end

function Wraith_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Wraith_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (22408, 1, "Wraith_OnEnterCombat")
RegisterUnitEvent (22408, 2, "Wraith_OnLeaveCombat")
RegisterUnitEvent (22408, 4, "Wraith_OnDied")