--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Mage_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Mage_Blast", 6000,0)
    pUnit:RegisterEvent("Mage_Flames",2500,0)
end

function Mage_Rip(pUnit,Event)
    pUnit:FullCastSpellOnTarget(17273, pUnit:GetClosestPlayer())
end

function Mage_Flames(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36104, pUnit:GetClosestPlayer())
end
    
function Mage_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Mage_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19543, 1, "Mage_OnEnterCombat")
RegisterUnitEvent (19543, 2, "Mage_OnLeaveCombat")
RegisterUnitEvent (19543, 4, "Mage_OnDied")