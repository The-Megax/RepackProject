--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]



function AuchenaiDoomsayer_Heal(pUnit)
	local hp = pUnit:GetHealthPct()
	if (hp < 43) then
		pUnit:CastSpell(11642)
	end
end

-- Having some fun here making it choose at random on of 
-- the two spells possible if not liked ill change
function AuchenaiDoomsayer_Mind(pUnit)
	local Spell = math.random(1,2)
	if (Spell == 1) then
		pUnit:FullCastSpellOnTarget(3516)
	end
	if (Spell == 2) then
		pUnit:FullCastSpellOnTarget(16568)
	end
end


--Heal set to 12 seconda cause it seems about 10-12 seconds on retail

function AuchenaiDoomsayer_OnEnterCombat(pUnit, event)
	local spellcast = math.random(2300,5600)
	pUnit:RegisterEvent("AuchenaiDoomsayer_MindBlast", spellcast, 0)
	pUnit:RegisterEvent("AuchenaiDoomsayer_Heal", 12000, 2)
end

RegisterUnitEvent(21285, 1, "AuchenaiDoomsayer_OnEnterCombat")
	
	
	
