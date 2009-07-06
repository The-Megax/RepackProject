--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Anchorite_OnEnterCombat(pUnit, Event)
    pUnit:RegisterEvent("Anchorite_Heal", 3500, 0)
    pUnit:RegisterEvent("Anchorite_Fire", 5000, 0)
    pUnit:RegisterEvent("Anchorite_Smite", 2500, 0)
end

function Anchorite_Heal(pUnit, Event)
    pUnit:CastSpell(35096)
end

function Anchorite_Fire(pUnit, Event)
    pUnit:FullCastSpellOnTarget(17141, pUnit:GetClosestPlayer())
end

function Anchorite_Smite(pUnit, Event)
    pUnit:FullCastSpellOnTarget(9734, pUnit:GetClosestPlayer())
end

function Anchorite_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Anchorite_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19467, 1, "Anchorite_OnEnterCombat")
RegisterUnitEvent (19467, 2, "Anchorite_OnLeaveCombat")
RegisterUnitEvent (19467, 4, "Anchorite_OnDied")