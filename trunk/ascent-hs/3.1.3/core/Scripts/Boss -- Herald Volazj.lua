--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HeraldVolazj_OnEnterCombat(pUnit, Event)
	pUnit:RegisterEvent("HeraldVolazj_Insanity",10000,0)
	pUnit:RegisterEvent("HeraldVolazj_Mindflay",20000,0)

end


function Insanity (pUnit, Event)
	pUnit:FullCastSpellOnTarget(57496,pUnit:GetRandomPlayer(0))
end 

function Mindflay (pUnit, Event)
	pUnit:FullCastSpellOnTarget(52586,pUnit:GetClosestPlayer(0))
end

function HeraldVolazj_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()	
end

function HeraldVolazj_Died(pUnit, Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(29311, 1, "HeraldVolazj_OnEnterCombat")
RegisterUnitEvent(29311, 2, "HeraldVolazj_OnLeaveCombat")
RegisterUnitEvent(29311, 4, "HeraldVolazj_OnDied")