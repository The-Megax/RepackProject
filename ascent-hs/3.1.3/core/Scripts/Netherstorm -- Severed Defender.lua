--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Defender_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Defender_Block",1000,(1))
    pUnit:RegisterEvent("Defender_Strike",5000,0)
end

function Defender_Block(pUnit,Event)
    pUnit:CastSpell(12169)
end   

function Defender_Strike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36093,pUnit:GetMainTank())
end

function Defender_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Defender_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20934, 1, "Defender_OnEnterCombat")
RegisterUnitEvent (20934, 2, "Defender_OnLeaveCombat")
RegisterUnitEvent (20934, 4, "Defender_OnDied")