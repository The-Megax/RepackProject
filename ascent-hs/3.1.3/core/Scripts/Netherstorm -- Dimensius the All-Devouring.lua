--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Dimensius_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Dimensius_Trick",1000,(1))
    pUnit:RegisterEvent("Dimensius_Spiral",3000,0)
    pUnit:RegisterEvent("Dimensius_Vault",1000,0)
end

function Dimensius_Trick(pUnit,Event)
    pUnit:CastSpell(37425)
end

function Dimensius_Spiral(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37500,pUnit:GetClosestPlayer())
end

function Dimensius_Vault(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37412,pUnit:GetClosestPlayer())
end

function Dimensius_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Dimensius_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19554, 1, "Dimensius_OnEnterCombat")
RegisterUnitEvent (19554, 2, "Dimensius_OnLeaveCombat")
RegisterUnitEvent (19554, 4, "Dimensius_OnDied")