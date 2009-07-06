--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Stalker_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Stalker_Shadowsurge",1000,0)
    pUnit:RegisterEvent("Stalker_Shadowtouched",1000,0)
end

function Stalker_Shadowsurge(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36517,pUnit:GetClosestPlayer())
end

function Stalker_Shadowtouched(pUnit,Event)
    pUnit:CastSpell(36515)
end

function Stalker_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Stalker_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20474, 1, "Stalker_OnEnterCombat")
RegisterUnitEvent (20474, 2, "Stalker_OnEnterCombat")
RegisterUnitEvent (20474, 4, "Stalker_OnEnterCombat")