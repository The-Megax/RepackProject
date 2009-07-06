--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Protector_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Protector_Strike",1000,0)
    pUnit:RegisterEvent("Protector_Smite",2500,0)
end

function Protector_Strike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36647,pUnit:GetClosestPlayer())
end

function Protector_Smite(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9734,pUnit:GetClosestPlayer())
end

function Protector_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Protector_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18873, 1, "Protector_OnEnterCombat")
RegisterUnitEvent (18873, 2, "Protector_OnLeaveCombat")
RegisterUnitEvent (18873, 4, "Protector_OnDied")