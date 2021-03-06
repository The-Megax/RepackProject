--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]
-- I think that i should link skeletons after the whole link die new link respawns, that will save both server's memory and script's functionality 
	
function Keleseth_OnEnterCombat(pUnit,Event)
	pUnit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Your blood is mine!")
	pUnit:RegisterEvent("Keleseth_ShadowBolt",3000, 0) 
	pUnit:RegisterEvent("Keleseth_Summon",15000, 0) -- this is incorrect, i will handle this after i get some time
	pUnit:RegisterEvent("Keleseth_FrostTomb",20000, 0)
end

function Keleseth_ShadowBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(43667,pUnit:GetRandomPlayer(0))
end

function Keleseth_FrostTomb(pUnit,Event)
	pUnit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Not so fast.")
	local plr = Unit:GetRandomPlayer(0)
	if(type(plr) == "userdata") then
		pUnit:FullCastSpellOnTarget(48400,pUnit:GetRandomPlayer(0))
	end
end
-- if someone can help me here, i think this spell can be scripted via lua, the player with this debuff should not move, like dummy applied on player witch haves HP ofc.

function Keleseth_Summon(pUnit,Event)
	pUnit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Aranal, lidel! Their fate shall be yours!")
	local x,y,z,o = pUnit:GetX(),pUnit:GetY(),pUnit:GetZ(),pUnit:GetO()
	pUnit:SpawnCreature(23970 , x, y, z, o, 14, 60000)
	pUnit:SpawnCreature(23970 , x, y, z, o, 14, 60000)
	pUnit:SpawnCreature(23970 , x, y, z, o, 14, 60000)
	pUnit:SpawnCreature(23970 , x, y, z, o, 14, 60000)
	pUnit:SpawnCreature(23970 , x, y, z, o, 14, 60000)
end 

-- should be rise emote

function Keleseth_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()	
end

function Keleseth_OnDied(pUnit, event, player)
	pUnit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"I join... the night.")
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23953, 1, "Keleseth_OnEnterCombat")
RegisterUnitEvent(23953, 2, "Keleseth_OnLeaveCombat")
RegisterUnitEvent(23953, 4, "Keleseth_OnDied")