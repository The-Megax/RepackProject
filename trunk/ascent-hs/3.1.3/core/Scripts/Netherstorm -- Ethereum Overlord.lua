--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Overlord_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Overlord_Shout",1000,0)
    pUnit:RegisterEvent("Overlord_Charge",1000,0)
    pUnit:RegisterEvent("Overlord_Weapons",1000,0)
    pUnit:RegisterEvent("Overlord_Shadowtouched",1000,0)
end

function Overlord_Charge(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36509,pUnit:GetMainTank())
end

function Overlord_Shout(pUnit,Event)
    pUnit:CastSpell(32064)
end

function Overlord_Weapons(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36510,pUnit:GetClosestPlayer())
end

function Overlord_Shadowtouched(pUnit,Event)
    pUnit:CastSpell(36515)
end

function Overlord_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Overlord_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20459, 1, "Overlord_OnEnterCombat")
RegisterUnitEvent (20459, 2, "Overlord_OnLeaveCombat")
RegisterUnitEvent (20459, 4, "Overlord_OnDied")