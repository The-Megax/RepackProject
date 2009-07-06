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

function PrinceTaldaram_OnEnterCombat(pUnit, Event)
	pUnit:SendChatMessage(14, 0, "I will feast on your remains.")
	pUnit:RegisterEvent("PrinceTaldaram_Bloodthirst",17000, 0)
	pUnit:RegisterEvent("PrinceTaldaram_Vasnih",24000, 0)
	pUnit:RegisterEvent("PrinceTaldaram_Conjure",35000, 0)
	pUnit:RegisterEvent("PrinceTaldaram_Vampyr",40000, 0)
end

function PrinceTaldaram_Bloodthirst(pUnit,Event)
	pUnit:FullCastSpell(55968)
end

function PrinceTaldaram_Vasnih(pUnit,Event)
	pUnit:FullCastSpell(55964)
	local vchoice=math.random(1, 2)
	if vchoice==1 then
		pUnit:SendChatMessage(14, 0,"Your heartbeat is music to my ears.")
	elseif vchoice==2 then
		pUnit:SendChatMessage(14, 0,"I am nowhere. I am everywhere. I am the watcher, unseen.")
	end
end

-- Core Script required it might crash server as well...worked on mine i will post patch
function PrinceTaldaram_Conjure(pUnit,Event)
	pUnit:FullCastSpellOnTarget(55931,pUnit:GetClosestPlayer(0))
end

function PrinceTaldaram_Vampyr(pUnit,Event)
	pUnit:FullCastSpellOnTarget(55959,pUnit:GetClosestPlayer(0))
	local vamchoice=math.random(1, 2)
	if vamchoice==1 then
		pUnit:SendChatMessage(14, 0,"So appetizing.")
	elseif vamchoice==2 then
		pUnit:SendChatMessage(14, 0,"Fresh, warm blood. It has been too long. ")
	end
end

function PrinceTaldaram_OnKilledTarget (pUnit, Event)
	local Choice=math.random(1, 2)
	if Choice==1 then
		pUnit:SendChatMessage(14, 0,"I will drink no blood before it's time.")
	elseif Choice==2 then	
		pUnit:SendChatMessage(14, 0,"One final embrace.")
end		
end

function PrinceTaldaram_OnLeaveCombat(pUnit, Event)
	pUnit:RemoveEvents()	
end

function PrinceTaldaram_Died(pUnit, event, player)
	pUnit:SendChatMessage(14, 0, "Still I hunger, still I thirst.")	
	pUnit:RemoveEvents()
end

RegisterUnitEvent(29308, 1, "PrinceTaldaram_OnEnterCombat")
RegisterUnitEvent(29308, 2, "PrinceTaldaram_OnLeaveCombat")
RegisterUnitEvent(29308, 4, "PrinceTaldaram_OnDied")
RegisterUnitEvent(29308, 3, "PrinceTaldaram_OnKilledTarget")