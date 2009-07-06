--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]
--[[
	DEFINES
	]]
local CHAT_MSG_MONSTER_YELL = 14 -- Do this because if enums where to change again, we would just update this.
local LANG_UNIVERSAL = 0

function ElderNadox_OnEnterCombat(pUnit,Event)
	math.randomseed(os.time()) -- to help randomize the function.
	pUnit:SendChatMessage(CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL,"The secrets of the deep shall remain hidden.")
	pUnit:RegisterEvent("ElderNadox_Summon",20000, 1)
	pUnit:RegisterEvent("ElderNadox_BroodPlague",8000, 1)
end

function ElderNadox_Summon(pUnit,Event)
	pUnit:SendChatMessage(CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL,"The young must not grow hungry.")
	local x,y,z,o = pUnit:GetX(),pUnit:GetY(),pUnit:GetZ(),pUnit:GetO() -- save some reading space here ^ ^
	pUnit:SpawnCreature(30176 , x, y, z, o, 14, 60000)
end

function ElderNadox_BroodPlague(pUnit,Event) -- if closest plr happens to be nil then console will spam error messages of this.
	if Unit:IsInCombat() == true then -- to prevent spamming whilst the unit isn't in combat.
		local plr = Unit:GetClosestPlayer()
		if type(plr) == "userdata" and plr:IsAlive() == true then
			pUnit:FullCastSpellOnTarget(56130,plr)
			pUnit:RegisterEvent("ElderNadox_BroodPlague",8000, 1)
		elseif type(plr) ~= "userdata" then
			ElderNadox_BroodPlague(pUnit,Event) -- call it again.
		end
	end
end

function ElderNadox_OnKilledTarget(pUnit, Event) -- might aswell call it a few times to randomize it
	if math.random(3) ==1 then
		pUnit:SendChatMessage(CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL,"Sleep now, in the cold dark.")
	elseif math.random(3)==2 then	
		pUnit:SendChatMessage(CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL,"For the Lich King!")
	elseif math.random(3)==3 then
		pUnit:SendChatMessage(CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL,"Perhaps we will be allies soon. ")	
	end
end

function ElderNadox_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()	
end

function ElderNadox_Died(pUnit, event, player)
	pUnit:SendChatMessage(CHAT_MSG_MONSTER_YELL, LANG_UNIVERSAL, "Master, is my service complete?")	
	pUnit:RemoveEvents()
end

RegisterUnitEvent(29309, 1, "ElderNadox_OnCombat")
RegisterUnitEvent(29309, 2, "ElderNadox_OnLeaveCombat")
RegisterUnitEvent(29309, 4, "ElderNadox_OnDied")
RegisterUnitEvent(29309, 3, "ElderNadox_OnKilledTarget")