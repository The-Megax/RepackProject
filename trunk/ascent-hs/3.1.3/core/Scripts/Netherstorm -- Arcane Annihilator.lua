--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Annihilator_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Annihilator_Explosion",1500,0)
    pUnit:RegisterEvent("Annihilator_Suppression",3000,0)
end

function Annihilator_Explosion(pUnit,Event)
    pUnit:FullCastSpellOnTarget(33860, pUnit:GetClosestPlayer())
end

function Annihilator_Suppression(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35892, pUnit:GetClosestPlayer())
end

function Annihilator_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Annihilator_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18856, 1, "Annihilator_OnEnterCombat")
RegisterUnitEvent (18856, 2, "Annihilator_OnLeaveCombat")
RegisterUnitEvent (18856, 4, "Annihilator_OnDied")