--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Nullifier_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Nullifier_Presence",1000,0)
end

function Nullifier_Presence(pUnit,Event)
    pUnit:CastSpell(36513)
end

function Nullifier_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Nullifier_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (22822, 1, "Nullifier_OnEnterCombat")
RegisterUnitEvent (22822, 2, "Nullifier_OnEnterCombat")
RegisterUnitEvent (22822, 4, "Nullifier_OnEnterCombat")