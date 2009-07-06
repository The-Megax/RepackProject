--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RuulTheDarkener_OnEnterCombat(pUnit,Event)
	pUnit:RegisterUnitEvent("RuulTheDarkener_Cleave", 15000, 0)
	pUnit:RegisterUnitEvent("RuulTheDarkener_Spellbreaker", 18000, 0)
	local Choice=math.random(1,2)
	if Choice==1 then
		pUnit:SendChatMessage(14, 0, "Your world is at an end.")
	elseif Choice==2 then
		pUnit:SendChatMessage(14, 0, "The skies will darken and all will go quiet. Only then will you know the sweet serenity of death.")
end
end

function RuulTheDarkener_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15284,pUnit:GetClosestPlayer())
end

function RuulTheDarkener_Spellbreaker(pUnit,Event)
	pUnit:FullCastSpellOnTarget(35871,pUnit:GetClosestPlayer())
end

function RuulTheDarkener_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function RuulTheDarkener_OnDied(pUnit,Event)
	pUnit:SpawnCreature(22106)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21315, 1, "RuulTheDarkener_OnEnterCombat")
RegisterUnitEvent(21315, 2, "RuulTheDarkener_OnLeaveCombat")
RegisterUnitEvent(21315, 4, "RuulTheDarkener_OnDied")