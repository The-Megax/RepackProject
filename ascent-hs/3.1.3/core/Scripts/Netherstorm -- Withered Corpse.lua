--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Corpse_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Corpse_Rend",15000,0)
    pUnit:RegisterEvent("Corpse_Parasite_Spell",6000,0)
    pUnit:RegisterEvent("Corpse_Parasite_Spawn",36000,0)
end

function Corpse_Rend(pUnit,Event)
    pUnit:FullCastSpellOnTarget(13443,pUnit:GetMainTank())
end

function Corpse_Parasite_Spell(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36469,pUnit:GetRandomPlayer(0))
end

function Corpse_Parasite_Spawn(pUnit,Event)
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36468)
    pUnit:SpawnCreature(21265, x-1, y, z, o, 14, o)
end

function Corpse_OnLeaveCombat(pUnit,Event)
    pUnit:RemoveEvents()
end

function Corpse_OnKilledTarget(pUnit,Event)
    pUnit:RemoveEvents()
end

function Corpse_OnDied(pUnit,Event)
    pUnit:RemoveEvents()
end

RegisterUnitEvent(20561,1,"Corpse_OnEnterCombat")
RegisterUnitEvent(20561,2,"Corpse_OnLeaveCombat")
RegisterUnitEvent(20561,3,"Corpes_OnKilledTarget")
RegisterUnitEvent(20561,4,"Corpse_OnDied")