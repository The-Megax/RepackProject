--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Hatecryer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Hatecryer_Curse",1000,0)
    pUnit:RegisterEvent("Hatecryer_Rain",1000,0)
end

function Hatecryer_Curse(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36541,pUnit:GetClosestPlayer())
end

function Hatecryer_Rain(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34017,pUnit:GetClosestPlayer())
end

function Hatecryer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Hatecryer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20930, 1, "Hatecryer_OnEnterCombat")
RegisterUnitEvent (20930, 2, "Hatecryer_OnLeaveCombat")
RegisterUnitEvent (20930, 4, "Hatecryer_OnDied")