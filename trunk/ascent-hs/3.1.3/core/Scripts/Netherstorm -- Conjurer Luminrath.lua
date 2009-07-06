--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Conjurer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Conjurer_Bolt",3000,0)
    pUnit:RegisterEvent("Conjurer_Sword",30000,0)
end

function Conjurer_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9532,pUnit:GetClosestPlayer())
end

function Conjurer_Sword(pUnit,Event)
    pUnit:CastSpell(36110)
end

function Conjurer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Conjurer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19544, 1, "Conjurer_OnEnterCombat")
RegisterUnitEvent (19544, 2, "Conjurer_OnLeaveCombat")
RegisterUnitEvent (19544, 4, "Conjurer_OnDied")
