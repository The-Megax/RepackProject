--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Socrethar_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Socrethar_Shield",10000,0)
    pUnit:RegisterEvent("Socrethar_Backslash",5000,0)
    pUnit:RegisterEvent("Socrethar_Cleave",6000,0)
    pUnit:RegisterEvent("Socrethar_Barrage",10000,0)
    pUnit:RegisterEvent("Socrethar_Protection",1000,(1))
    pUnit:RegisterEvent("Socrethar_Bolt",3000,0)
end

function Socrethar_Shield(pUnit,Event)
    pUnit:CastSpell(37538)
end

function Socrethar_Backslash(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37537,pUnit:GetRandomPlayer(0))
end

function Socrethar_Cleave(pUnit,Event)
    pUnit:FullCastSpellOnTarget(15496,pUnit:GetMainTank())
end

function Socrethar_Barrage(pUnit,Event)
    pUnit:CastSpell(37541)
    local plr = pUnit:GetRandomPlayer()
    if plr ~= nil then
    pUnit:ChannelSpell(plr:GetGUID(),37540)
end
end

function Socrethar_Protection(pUnit,Event)
    pUnit:CastSpell(37539)
end

function Socrethar_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(28448,pUnit:GetRandomPlayer(0))
end

function Socrethar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Socrethar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20132, 1, "Socrethar_OnEnterCombat")
RegisterUnitEvent (20132, 2, "Socrethar_OnLeaveCombat")
RegisterUnitEvent (20132, 4, "Socrethar_OnDied")