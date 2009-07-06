--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function VilewingChimaera_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("VilewingChimaera_FroststormBreath", 5000, 0)
	pUnit:RegisterEvent("VilewingChimaera_VenomSpit", 15000, 0)
end

function VilewingChimaera_FroststormBreath(pUnit,Event)
	pUnit:FullCastSpellOnTarget(55491,pUnit:GetClosestPlayer())
end

function VilewingChimaera_VenomSpit(pUnit,Event)
	pUnit:FullCastSpellOnTarget(16552,pUnit:GetClosestPlayer())
end

function VilewingChimaera_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function VilewingChimaera_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21879, 1, "VilewingChimaera_OnEnterCombat")
RegisterUnitEvent(21879, 2, "VilewingChimaera_OnLeaveCombat")
RegisterUnitEvent(21879, 4, "VilewingChimaera_OnDied")