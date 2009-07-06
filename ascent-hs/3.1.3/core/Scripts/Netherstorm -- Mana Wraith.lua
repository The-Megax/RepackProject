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
    pUnit:RegisterEvent("Wraith_Mana",2000,0)
end

function Wraith_Mana(pUnit,Event)
    pUnit:FullCastSpellOnTarget(29054,pUnit:GetClosestPlayer())
end

function Wraith_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Wraith_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18864, 1, "Wraith_OnEnterCombat")
RegisterUnitEvent (18864, 2, "Wraith_OnLeaveCombat")
RegisterUnitEvent (18864, 4, "Wraith_OnDied")