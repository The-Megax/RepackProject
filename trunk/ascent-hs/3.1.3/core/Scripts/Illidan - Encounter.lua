--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team. This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. You must
also include a link to the Website. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

--[[
	Credits / Thanks
Myself - Creating this script
Paroxysm - Helping me very much
Azolex - Creating the Akama/Illidan intro
and thanks/appreciations to others who helped.
	]]

--[[
	Locals
	]]

function Illidan-Local(Unit,Event)
local X,Y,Z,O = Unit:GetX(),Unit:GetY(),Unit:GetZ(),Unit:GetO()
local elem1,elem2 = Unit:GetCreatureNearestCoords(X,Y,Z,22997001),Unit:GetCreatureNearestCoords(X,Y,Z,22997002) --// Have to do seperate Spawns.
local Door = Unit:GetGameObjectNearestCoords(X,Y,Z,185905)
local Udalo = Unit:GetCreatureNearestCoords(751.884705, 311.270050, 312.121185,23410)
local Olum = Unit:GetCreatureNearestCoords(751.687744, 297.408600, 312.124817,23411)
local Akama = Unit:GetCreatureNearestCoords(X,Y,Z,22990)
local FC = Unit:GetCreatureNearestCoords(X,Y,Z,23336)
local Randomplr = Unit:GetRandomPlayer(0)
local Blade1 = Unit:GetCreatureNearestCoords(676.717346, 322.445251, 354.153320,229960)
local Blade2 = Unit:GetCreatureNearestCoords(677.368286, 285.374725, 354.242157,229960)
local Maiev = Unit:GetCreatureNearestCoords(X,Y,Z,231970)
local ClosestPlayer = Unit:GetClosestPlayer()
local HP = Unit:GetHealthPct()
local tankX,tankY,tankZ,tankO = tank:GetX(),tank:GetY(),tank:GetZ(),tank:GetO()
local plrX,plrY,plrZ,plrO = plr:GetX(),plr:GetY(),plr:GetZ(),plr:GetO()
local Trigger = Unit:GetCreatureNearestCoords(X,Y,Z,230691)
local TrigX,TrigY,TrigZ,TrigO = Trigger:GetX(),Trigger:GetY(),Trigger:GetZ(),Trigger:GetO()
end
RegisterUnitEvent(229170, 1, "Illidan-Local")

function Maiev-Local(Unit,Event)
local plr = Unit:GetClosestPlayer()
local tank = Unit:GetMainTank()
local X,Y,Z,O = Unit:GetX(),Unit:GetY(),Unit:GetZ(),Unit:GetO()
local illidan = Unit:GetCreatureNearestCoords(695.806, 306.433, 354.26, 229170)
end
RegisterUnitEvent(231970, 19, "Maiev-Local")

function Akama-Local(Unit,Event)
local moved = false
local doors = false
local ScenePart = 1
local Udalo = Unit:GetCreatureNearestCoords(751.884705, 311.270050, 312.121185,23410)
local Olum = Unit:GetCreatureNearestCoords(751.687744, 297.408600, 312.124817,23411)
local Creature_Akama = 229900
local Creature_DoorDummy = 300010
local AKAMA_DOOR_FAIL = 41271
local AKAMA_DOOR_OPEN = 41268
local DEATHSWORN_DOOR_OPEN = 41269
local GATE_FAILURE = 10390
local m_despawn = 41242
end
RegisterUnitEvent(229900, 19, "Akama-Local")

--[[
	Illidan
	]]

function Illidan_OnSpawn(Unit,Event)
	Unit:SetUInt32Value(UnitField.UNIT_FIELD_FLAGS,UnitFieldFlags.UNIT_FLAG_NOT_ATTACKABLE_9)
	Unit:CastSpell(39656)
end

RegisterUnitEvent(229170, 18, "Illidan_OnSpawn")

function Illidan_OnEnterCombat(Unit,Event)
	Unit:SetUInt64Value(UnitField.UNIT_FIELD_FLAGS,UnitFieldFlags.UNIT_FLAG_UNKNOWN_1)
	Unit:RegisterEvent("Illidan_Phase1", 1000, 1)
	Unit:RegisterEvent("Illidan_CallMinion", 1000, 1)
end

function Illidan_CallMinion(Unit,Event)
 if (HP <= 94) then
	Unit:RegisterEvent("Illidan_SayPHASECallMinion", 000, 1)
end
end

function Illidan_SayPHASECallMinion(Unit,Event)
	Unit:RegisterEvent("Illidan_AkamaFlee", 5000, 1)
	Unit:RegisterEvent("Illidan_AkamaTargetCheck", 1000, 1)
	Unit:PlaySoundToSet(11465)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Come, my minions. Deal with this traitor as he deserves!")
end

function Illidan_AkamaFlee(Unit,Event)
	Akama:SetCombatCapable(1)
	Akama:SetCombatMeleeCapable(1)
	Akama:SetCombatRangedCapable(1)
	Akama:SetCombatSpellCapable(1)
	Akama:SetCombatTargetingCapable(1)
	Akama:ClearThreatList()
	Akama:WipeThreatList()
	Akama:WipeTargetList()
	Akama:WipeCurrentTarget()
	Akama:SetFaction(35)
	Akama:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"I will deal with these mongrels! Strike now, friends! Strike at the Betrayer!")
	Akama:MoveTo(718.616, 305.473, 352.996, -0.860865)
	Unit:RegisterEvent("Illidan_AkamaFlee2", 6000, 1)
end

function Illidan_AkamaTargetCheck(Unit,Event)
	Unit:SetNextTarget(ClosestPlayer) 
end


function Illidan_AkamaFlee2(Unit,Event)
	Akama:MoveTo(673.927, 259.700, 352.996, -2.344210)
end

function Illidan_Phase1(Unit,Event)
	Unit:RegisterEvent("Illidan_Phase2", 1000, 0)
	Unit:RegisterEvent("Illidan_Shear", 15000, 0)
	Unit:RegisterEvent("Illidan_FlameCrash", 33000, 0)
	Unit:RegisterEvent("Illidan_ParasiticShadowfiend", 45000, 0)
	Unit:RegisterEvent("Illidan_DrawSoul", 37000, 0)
end

function Illidan_Shear(Unit,Event)
	Unit:FullCastSpellOnTarget(41032,tank)
	if (tank ~= nil) then
	Unit:FullCastSpellOnTarget(41032,plr)
	if (plr ~= nil) then
		return
end
end
end

function Illidan_FlameCrash(Unit,Event)
	Unit:FullCastSpellOnTarget(40832,tank)
	Unit:RegisterEvent("Illidan_FlameCrashVisualCheck", 000, 4)
	if (tank ~= nil) then
	Unit:FullCastSpellOnTarget(41032,plr)
	Unit:RegisterEvent("Illidan_FlameCrashVisualCheck", 000, 4)
	if (plr ~= nil) then
		return
end
end
end

function Illidan_FlameCrashVisualCheck(Unit,Event)
 if (FC:IsInWorld() == true) then
	FC:CastSpell(40836)
	else
		return
end
end

function Illidan_ParasiticShadowfiend(Unit,Event)
	Unit:FullCastSpellOnTarget(41917,plr)
	Unit:FullCastSpellOnTarget(41917,tank)
	Unit:RegisterEvent("Illidan_SpawnParasiticShadowfiend", 10000, 1)
end

function Illidan_SpawnParasiticShadowfiend(Unit,Event)
 if (plr and tank ~= nil) then
		return
	else
	Unit:SpawnCreature(23498,tankX,tankY,tankZ,tankO,2,0)
	Unit:SpawnCreature(23498,tankX,tankY,tankZ,tankO,2,0)
	Unit:SpawnCreature(23498,plrX,plrY,plrZ,plrO,2,0)
	Unit:SpawnCreature(23498,plrX,plrY,plrZ,plrO,2,0)
end
end

function Illidan_DrawSoul(Unit,Event)
	Unit:FullCastSpellOnTarget(40904,tank)
	if (tank ~= nil) then
	Unit:FullCastSpellOnTarget(40904,plr)
	if (plr ~= nil) then
		return
end
end
end

function Illidan_Phase2(Unit,Event)
 if (HP <= 65) then
	Unit:RemoveEvents()
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"I will not be touched by rabble such as you!")
	Unit:PlaySoundToSet(11479)
	Unit:EnableMoveFly(1)
	Unit:SetFlying()
	Unit:SetCombatMeleeCapable(1)
	Unit:SetUInt32Value(UnitField.UNIT_FIELD_FLAGS,UnitFieldFlags.UNIT_FLAG_NOT_SELECTABLE)
	Unit:SetUInt32Value(UnitField.UNIT_FIELD_FLAGS,UnitFieldFlags.UNIT_FLAG_NOT_ATTACKABLE_9)
	Unit:CastSpell(57764)
	Unit:RegisterEvent("Illidan_Phase2FlyToFront", 7000, 1)
end
end

function Illidan_Phase2FlyToFront(Unit,Event)
	Unit:MoveTo(705.045, 305.233, 353.888, 3.129)
	Unit:RegisterEvent("Illidan_Phase2FaceMiddle", 1000, 1)
end

function Illidan_Phase2FaceMiddle(Unit,Event)
	Unit:SetFacing(0.674085)
	Unit:RegisterEvent("Illidan_Phase2Talk", 5000, 1)
end

function Illidan_Phase2Talk(Unit,Event)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Behold the Flames of Azzinoth!")
	Unit:PlaySoundToSet(11480)
	Unit:CastSpellAoF(676.717346, 322.445251, 354.153320,39635)
	Unit:CastSpellAoF(677.368286, 285.374725, 354.242157,39849)
	Unit:RegisterEvent("Illidan_Phase2Patrol",1000, 1)
	Unit:RegisterEvent("Illidan_GlaiveSpawn", 1200, 1)
	
end

function Illidan_GlaiveSpawn(Unit,Event)
	Unit:SpawnCreature(229960, 676.717346, 322.445251, 354.153320, 5.732623,35,0)
	Unit:SpawnCreature(229960, 677.368286, 285.374725, 354.242157, 5.645614,35,0)
	Unit:SpawnCreature(229970, 672.039246, 326.748322, 354.206390, 0.207343,1825,0)
	Unit:SpawnCreature(229971, 673.008667, 283.813660, 354.267548, 6.203853,1825,0)
end

function Illidan_Phase2Patrol(Unit,Event)
	Unit:CastSpell(57764)
	Unit:RegisterEvent("Illidan_Phase2Patrol2",45000, 0)
	Unit:RegisterEvent("Illidan_Phase2Spells",1000, 1)
end

function Illidan_Phase2Patrol2(Unit,Event)
local Choice=math.random(1, 3)
if (Choice==1) then
	Unit:MoveTo(718.616, 305.474, 352.996, 3.140)
elseif (Choice==2) then
	Unit:MoveTo(685.491, 344.018, 353.148, 4.512)
elseif (Choice==3) then
	Unit:MoveTo(673.927, 259.700, 352.996, 1.484)
end
end

function Illidan_Phase2Spells(Unit,Event)
local Choice=math.random(1, 2)
	if (plr ~= nil) then 
		return
	else
		if (Choice == 1) then
			Unit:RegisterEvent("Illidan_Fireball", 3000, 0)
			Unit:RegisterEvent("Illidan_DarkBarrage", 120000, 0)
			Unit:RegisterEvent("Illidan_EyeBeam", 74000, 0)
			Unit:RegisterEvent("Illidan_Phase3", 1000, 1)
	elseif (Choice == 2) then
		Unit:RegisterEvent("Illidan_Fireball", 5500, 0)
		Unit:RegisterEvent("Illidan_DarkBarrage", 120000, 0)
		Unit:RegisterEvent("Illidan_EyeBeam", 74000, 0)
		Unit:RegisterEvent("Illidan_Phase3", 1000, 1)
		end
	end
end

function Illidan_Fireball(Unit,Event)
 if (plr ~= nil) then
		return
	else
	Unit:CancelSpell()
	Unit:FullCastSpellOnTarget(40598,plr)
end
end

function Illidan_DarkBarrage(Unit,Event)
 if (Randomplr ~= nil and tank ~= nil) then
		return
	else
	Unit:CancelSpell()
	Unit:FullCastSpellOnTarget(40585,Randomplr)
end
end

function Illidan_EyeBeam(Unit,Event)
local ChoiceOnSpawn = math.random(1,2)
	Unit:CancelSpell()
	Unit:RemoveEvents()
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Stare into the eyes of the Betrayer!")
	Unit:PlaySoundToSet(11481)
	Unit:RegisterEvent("Illidan_ChannelOnTrigger", 000, 0)
	Unit:RegisterEvent("Illidan_StopChannel", 32000, 1)
	if (ChoiceOnSpawn == 1) then
	Unit:SpawnCreature(230691,642.240601,297.297180,353.423401,6,35,0)
elseif (ChoiceOnSpawn == 2) then
	Unit:SpawnCreature(230691,642.240601,297.297180,353.423401,6,35,0)
	end
end

function Illidan_ChannelOnTrigger(Unit,Event)
 if (Trigger:IsInWorld() == true and Trigger:IsAlive() == true) then
	Unit:CastSpellAoF(TrigX,TrigY,TrigZ,39908)
	elseif (Trigger:IsInWorld() == false and Trigger:IsAlive() == false) then
		return
end
end

function Illidan_StopChannel(Unit,Event)
	Unit:RemoveEvents()
	Unit:RegisterEvent("Illidan_Phase2Spells", 32000, 1)
end

function EyeBeam_OnSpawn(Unit,Event)
	Unit:RegisterEvent("EyeBeam_Move", 3000, 1)
end

function EyeBeam_Move(Unit,Event)
	if (X == 642.240601) then
	Unit:MoveTo(X,Y,Z)
elseif (X == ) then
	Unit:MoveTo(X,Y,Z)
end
end


RegisterUnitEvent(230691, 18, "EyeBeam_OnSpawn")

function Illidan_Phase3(Unit,Event)
if (Elem1:IsDead() and Elem2:IsDead() == true) then
	Unit:RemoveEvents()
	Unit:MoveTo(676.248, 262.114, 352.996, 6)
	Unit:RegisterEvent("Illidan_Phase3GlaiveTake", 3000, 1)
	else
	return
end
end

function Illidan_Phase3GlaiveTake(Unit,Event)
	Unit:MoveTo(676.248, 262.114, 352.996, 6)
	Unit:StopMovement(1)
	Unit:SetCombatMeleeCapable(1)
	Blade1:Despawn(000,0)
	Blade2:Despawn(000,0)
	Unit:CastSpell(39873)
	Unit:RegisterEvent("Illidan_Phase3Spells", 1000, 0)
end

function Illidan_Phase3Spells(Unit,Event)
if (Elem1:IsAlive() == false and Elem2:IsAlive() == false) then
	Unit:Land()
	Unit:StopMovement(1)
	Unit:SetCombatMeleeCapable(1)
	Unit:RegisterEvent("Illidan_StartCombat", 2000, 1)
	Unit:RegisterEvent("Illidan_Shear", 15000, 0)
	Unit:RegisterEvent("Illidan_FlameCrash", 30000, 0)
	Unit:RegisterEvent("Illidan_ParasiticShadowfiend", 000, 0)
	Unit:RegisterEvent("Illidan_DrawSoul", 33000, 0)
	Unit:RegisterEvent("Illidan_AgonizingFlames", 70000, 0)
	Unit:RegisterEvent("Illidan_Phase4", 30000, 1)
	Unit:RegisterEvent("Illidan_Phase5", 1000, 1)
	else
	Unit:RegisterEvent("Illidan_Phase3Spells", 1000, 1)
end
end

function Illidan_StartCombat(Unit,Event)
	Unit:StopMovement(0)
	Unit:SetCombatMeleeCapable(0)
end

function Illidan_Phase4(Unit,Event)
	Unit:RemoveEvents()
	Unit:SetCombatMeleeCapable(1)
	Unit:RegisterEvent("Illidan_Emotes", 000, 1)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Behold the power... of the demon within!")
	Unit:PlaySoundToSet(11475)
	Unit:RegisterEvent("Illidan_Deform", 60000, 1)
end

function Illidan_Emotes(Unit,Event)
	Unit:Emote(PlayEmote.EMOTE_ONESHOT_CUSTOMSPELL02,2000)
	Unit:RegisterEvent("Illidan_Emote2", 1200, 1)
end

function Illidan_Emote2(Unit,Event)
	Unit:Emote(PlayEmote.EMOTE_ONESHOT_CUSTOMSPELL03,2000)
	Unit:CastSpell(40506)
	Unit:CastSpell(41142)
	Unit:RegisterEvent("Illidan_Turn", 2000, 1)
end

function Illidan_Turn(Unit,Event)
	Unit:Emote(PlayEmote.EMOTE_ONESHOT_CUSTOMSPELL04,3500)
	Unit:CastSpell(40506)
end

function Illidan_Deform(Unit,Event)
	Unit:RemoveEvents()
	Unit:Emote(PlayEmote.EMOTE_ONESHOT_CUSTOMSPELL02,2000) 
	Unit:RegisterEvent("Illidan_DeformMid1", 2000, 1)
end

function Illidan_DeformMid1(Unit,Event)
	Unit:RemoveAura(40506)
	Unit:RemoveAura(41142)
	Unit:Emote(PlayEmote.EMOTE_ONESHOT_CUSTOMSPELL03,1200)
	Unit:RegisterEvent("Illidan_Phase3Spells", 4500, 1)
	Unit:RegisterEvent("Illidan_DeformCheck", 1200, 1)
end

function Illidan_DeformCheck(Unit,Event)
	Unit:RemoveAura(40506)
	Unit:RemoveAura(41142)
	Unit:SetModel(21135)
	Unit:SetCombatMeleeCapable(0)
	Unit:Emote(PlayEmote.EMOTE_ONESHOT_CUSTOMSPELL04,3500)
end

function Illidan_Phase5(Unit,Event)
 if (HP <= 29) then
	Unit:RemoveEvents()
	Unit:CastSpell(40647)
	Unit:SetCombatMeleeCapable(1)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Is this it, mortals? Is this all the fury you can muster?")
	Unit:PlaySoundToSet(11476)
	Unit:Emote(PlayEmote.EMOTE_ONESHOT_QUESTION,6000)
	Unit:RegisterEvent("Illidan_SpawnMaiev", 8000, 1)
	Unit:RegisterEvent("Illidan_MaievTalk1", 15000, 1)
	else
		return
end
end

function Illidan_SpawnMaiev(Unit,Event)
	Unit:SpawnCreature(231970,X,Y,Z+.5,2.177125,35,0)
	Unit:Emote(PlayEmote.EMOTE_ONESHOT_NONE,1000)
	if (Maiev:IsInWorld() == true) then
	Unit:SetFacing(2.177)
	Unit:SetNextTarget(Maiev)
end
end

function Illidan_MaievTalk1(Unit,Event)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Maiev... How is it even possible?")
	Unit:PlaySoundToSet(11477)
	Unit:RegisterEvent("Illidan_MaievAttack", 7000, 1)
end

function Illidan_MaievAttack(Unit,Event)
	Unit:RegisterEvent("Illidan_Speak2Maiev", 35000, 0)
	Unit:RegisterEvent("Illidan_OnCloseToDie", 35000, 0)
	Unit:SetNextTarget(Maiev)
end

function Illidan_Speak2Maiev(Unit,Event)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Feel the hatred of ten thousand years!")
	Unit:PlaySoundToSet(11470)
end

function Illidan_OnCloseToDie(Unit,Event)
 if (HP <= 2 or HP == 1) then
	Unit:RemoveEvents()
	Unit:StopMovement(20000)
	Unit:SetCombatMeleeCapable(1)
	Unit:Root()
	Unit:Emote(PlayEmote.EMOTE_ONESHOT_CUSTOMSPELL07,20000)
	Unit:SetUInt32Value(UnitField.UNIT_FIELD_FLAGS,UnitFieldFlags.UNIT_FLAG_NOT_SELECTABLE+UnitFieldFlags.UNIT_FLAG_NOT_ATTACKABLE_9)
	Unit:SetCombatMeleeCapable(1)
end
end

function Illidan_OnDied(Unit,Event)
	Unit:RemoveEvents()
end

function Illidan_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
	if (Unit:IsFlying() == true) then
	Unit:Land()
	else
	return
end
end

function Illidan_OnKill(Unit,Event)
	local Choice=math.random(1, 2)
if (Choice==1) then
	Unit:PlaySoundToSet(11473)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Who shall be next to taste my blades?!")
elseif (Choice==2) then
	Unit:PlaySoundToSet(11472)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"This is too easy!")
end
end

RegisterUnitEvent(229170, 1, "Illidan_OnEnterCombat")
RegisterUnitEvent(229170, 2, "Illidan_OnLeaveCombat")
RegisterUnitEvent(229170, 3, "Illidan_OnKill")
RegisterUnitEvent(229170, 4, "Illidan_OnDied")

--[[
	Maiev
	]]

function Maiev_OnSpawn(Unit,Event)
	Unit:RegisterEvent("Maiev_IfAttacked", 3000, 0)
	Unit:RegisterEvent("Maiev_IfIllidanIsDown", 3000, 0)
	Unit:SetCombatMeleeCapable(1)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Their fury pales before mine, Illidan. We have some unsettled business between us.")
	Unit:PlaySoundToSet(11491)
	Unit:CastSpell(41221)
	Unit:RegisterEvent("Maiev_Illidan2", 13000, 1)
end

function Maiev_Illidan2(Unit,Event)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Ah, my long hunt is finally over. Today, Justice will be done!")
	Unit:PlaySoundToSet(11492)
	Unit:RegisterEvent("Maiev_AttackIllidan", 8000, 1)
end

function Maiev_AttackIllidan(Unit,Event)
	Unit:SetCombatMeleeCapable(0)
end

function Maiev_IfAttacked(Unit,Event)
 if (Unit:IsAttacking() == 1) then
	Unit:RegisterEvent("Maiev_RandomTalk", 8000, 0)
	else
	Unit:RegisterEvent("Maiev_IfAttacked", 1000, 0)
end
end

function Maiev_RandomTalk(Unit,Event)
	local Choice=math.random(1, 2)
if (Choice==1) then
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"That, is for Naisha!")
	Unit:PlaySoundToSet(11493)
elseif (Choice==2) then
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Bleed as I have bled!")
	Unit:PlaySoundToSet(11494)
end
end

function Maiev_IfIllidanIsDown(Unit,Event)
 if (illidan:HP == 1) then
	Unit:SetCombatMeleeCapable(1)
	Unit:Root()
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Ah, It is finished. You, are beaten.")
	Unit:PlaySoundToSet(11496)
	Unit:RegisterEvent("Maiev_IfIllidanIsDown2", 5000, 1)
	else
	Unit:RegisterEvent("Maiev_IfIllidanIsDown", 2000, 1)
end
end

function Maiev_IfIllidanIsDown2(Unit,Event)
	illidan:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"You have won... Maiev. But the huntress... is nothing without the hunt. You... are nothing... without me.")
	illidan:PlaySoundToSet(11478)
	Unit:RegsiterEvent("Maiev_IllidanKilled", 13000, 1)
	Unit:RegsiterEvent("Maiev_KillIllidanAfterSpeech", 10000, 1)
end

function Maiev_KillIllidanAfterSpeech(Unit,Event)
	illidan:SetHealthPct(0)
end

function Maiev_IllidanKilled(Unit,Event)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"He's right. I feel nothing. I am nothing.")
	Unit:PlaySoundToSet(11497)
	Unit:RegisterEvent("Maiev_DeSpawn", 3000, 1)
end

function Maiev_Despawn(Unit,Event)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LandField.LANG_UNIVERSAL,"Farewell, champions.")
	Unit:PlaySoundToSet(11498)
	Unit:CastSpell(34673)
	Unit:SpawnCreature(Akama4, 739.545410, 323.023743, 352.996094, 4.578086,35,0)
end


RegisterUnitEvent(231970, 18, "Maiev_OnSpawn")

--[[
	Akama
	]]

function Akama.OnTalk(Unit, Event, player, pMisc)
	if (player:IsInCombat() ~= true) then
		Unit:GossipCreateMenu(1, player, 0)
		if(moved = false) then
			Unit:GossipMenuAddItem(0, "I'm ready, Akama.", 1)
		else
			Unit:GossipMenuAddItem(0, "We're ready to face Illidan.", 2)
		end
		Unit:GossipSendMenu(player)
   end
end

function Akama.OnSelect(Unit, Event, player, id, intid, code)
	if(intid == 1) then
		moved = true
		Unit:CreateWaypoint(660.248596, 330.695679, 271.688110, 100, 256, 0)
		Unit:CreateWaypoint(671.172241, 353.273193, 271.689453, 100, 256, 0)
		Unit:CreateWaypoint(694.227783, 379.461365, 271.792145, 100, 256, 0)
		Unit:CreateWaypoint(724.159973, 373.263275, 282.614349, 100, 256, 0)
		Unit:CreateWaypoint(747.034973, 335.668274, 307.047150, 100, 256, 0)
		Unit:CreateWaypoint(755.477234, 304.194580, 312.167328, 100, 256, 0)
		Unit:CreateWaypoint(771.809753, 303.744873, 313.563507, 100, 256, 0)
		-- After Doors parts:
		Unit:CreateWaypoint(778.550232, 304.515198, 318.818542, 100, 256, 0)
		Unit:CreateWaypoint(789.564697, 304.493652, 319.759583, 100, 256, 0)
		Unit:CreateWaypoint(799.598389, 295.776642, 319.760040, 100, 256, 0)
		Unit:CreateWaypoint(799.054016, 288.826660, 320.030334, 100, 256, 0)
		Unit:CreateWaypoint(794.595459, 262.302856, 341.463715, 100, 256, 0)
		Unit:CreateWaypoint(794.396973, 256.420471, 341.463715, 100, 256, 0)
		Unit:CreateWaypoint(783.355957, 250.460892, 341.463776, 100, 256, 0)
		Unit:CreateWaypoint(764.988098, 238.561462, 353.646484, 100, 256, 0)
		Unit:CreateWaypoint(749.337463, 236.288681, 352.997223, 100, 256, 0)
		Unit:CreateWaypoint(751.941528, 304.626221, 352.996124, 100, 256, 0)
		Unit:CreateWaypoint(747.236511, 304.922913, 352.996155, 100, 256, 0)
		Unit:CreateWaypoint(747.834106, 362.513977, 352.996155, 100, 256, 0)
		-- End of waypoint part
		Unit:MoveToWaypoint(1)
		Unit:SetFieldFlags(Unit_NPC_FLAGS, 0)
		Unit:GossipComplete()
		Unit:SetCombatCapable(1)
	elseif(intid == 2) then
		ForceWaypointMove(17)
	end
end

function Akama.OnReachWp(Unit,null,null,wp)
	local p = wp + 1
	if(doors = false) then
		if(wp == 6) then
			doors = true
			Unit:RegisterEvent("Akama.DoorsScenario", 1000, 1)
		else
			Unit:MoveToWaypoint(p)
		end
	else
		if(wp == 16) then
			Unit:SetFieldFlags(UNIT_NPC_FLAGS, 1)
		elseif(wp == 17) then
			Unit:RegisterEvent("Akama.IllidanDialog", 1000, 1)
		else		
			Unit:MoveToWaypoint(p)
	end
end
end

function Akama.DoorsScenario(Unit)
	local DoorDummy = Unit:GetCreatureNearestCoords( 771.5, 304.7, 319.0, Creature_DoorDummy)
	local Gate = Unit:GetGameObjectNearestCoords(774.7f, 304.6f, 314.85f, 185905);
	if(ScenePart == 1) then
		Unit:SetFacing(6.248631)
		ScenePart = 2
		Unit:RegisterEvent("Akama.DoorsScenario", 1000, 1)
	elseif(ScenePart == 2) then
		Unit:Emote(PlayEmote.EMOTE_ONESHOT_TALK,3000)
		Unit:SendChatMessage(CHAT_MSG_MONSTER_SAY, 0, "The door is all that stands between us and the Betrayer. Stand aside, friends.")
		ScenePart = 3
		Unit:RegisterEvent("Akama.DoorsScenario", 4000, 1)
	elseif(ScenePart == 3) then
		if(pDoorDummy ~= nil) then
			Unit:ChannelSpell(DoorDummy:GetGUID(), AKAMA_DOOR_FAIL) 
		end
		ScenePart = 4
		Unit:RegisterEvent("Akama.DoorsScenario", 1500, 1)
	elseif(ScenePart == 4) then
		Unit:ChannelSpell( 0, 0) 
		ScenePart = 5
		Unit:RegisterEvent("Akama.DoorsScenario", 1500, 1)
	elseif(ScenePart == 5) then	
		Unit:SendChatMessage(CHAT_MSG_MONSTER_SAY, 0, "I cannot do this alone...") 
		Unit:Emote(PlayEmote.EMOTE_ONESHOT_NO,2000)
		Unit:SpawnCreature(23410, 751.884705, 311.270050, 312.121185, 1012, 0)
		Unit:SpawnCreature(23411, 751.687744, 297.408600, 312.124817, 1012, 0)
		ScenePart = 6
		Unit:RegisterEvent("Akama.DoorsScenario", 1000, 1)
	elseif(ScenePart == 6) then
		ScenePart = 7
		Unit:RegisterEvent("Akama.DoorsScenario", 1000, 1)
	elseif(ScenePart == 7) then
		ScenePart = 8
		Unit:RegisterEvent("Akama.DoorsScenario", 1500, 1)
	elseif(ScenePart == 8) then
		Unit:ChannelSpell( Creature_DoorDummy:GetGUID(), DEATHSWORN_DOOR_OPEN) 
		Udalo:ChannelSpell( Creature_DoorDummy:GetGUID(), DEATHSWORN_DOOR_OPEN) 
		Olum:ChannelSpell( Creature_DoorDummy:GetGUID(), DEATHSWORN_DOOR_OPEN) 
		ScenePart = 9
		Unit:RegisterEvent("Akama.DoorsScenario", 2200, 1)
	elseif(ScenePart == 9) then
		if(Gate ~= nil) then
			Gate:SetFieldFlags(GAMEOBJECT_STATE, 0)
			Creature_DoorDummy:CastSpell(GATE_FAILURE)
		end
		ScenePart = 10
		Unit:RegisterEvent("Akama.DoorsScenario", 1500, 1)
	elseif(ScenePart == 10) then
		Unit:ChannelSpell( 0, 0)
		Udalo:ChannelSpell( 0, 0)
		Olum:ChannelSpell( 0, 0)
		ScenePart = 11
		Unit:RegisterEvent("Akama.DoorsScenario", 1000, 1)
	elseif(ScenePart == 11) then
		Unit:SendChatMessage(CHAT_MSG_MONSTER_SAY, 0, "I thank you for your aid, my brothers. Our people will be redeemed!")
		Unit:Emote(PlayEmote.EMOTE_ONESHOT_SALUTE,2000)
		ScenePart = 12
		Unit:RegisterEvent("Akama.DoorsScenario", 4000, 1)
	elseif(ScenePart == 12) then	
		Udalo:Despawn( 0, 0)
		Olum:Despawn( 0, 0)
		ScenePart = 12
		Unit:RegisterEvent("Akama.DoorsScenario", 1000, 1)	
	elseif(ScenePart == 13) then
		Unit:MoveToWaypoint(7)
		ScenePart = 1
	end
end	

function Akama.IllidanDialog(Unit)
	if(Illidan == nil or Illidan:IsDead())
		Unit:SendChatMessage(CHAT_MSG_MONSTER_SAY, 0, "Not this time my friends.")
		Unit:CastSpell(m_despawn)
		Unit:Despawn(0, 0)
	else
		if(ScenePart == 1) then
			Unit:SetFacing(3.126680)
			ScenePart = 2
			Unit:RegisterEvent("Akama.IllidanDialog", 1000, 1)	
		elseif(ScenePart == 2) then	
			Illidan:RemoveAura(39656)
			ScenePart = 3
			Unit:RegisterEvent("Akama.IllidanDialog", 1000, 1)	
		elseif(ScenePart == 3) then
			Illidan:SendChatMessage(CHAT_MSG_MONSTER_YELL, 0, "Akama... your duplicity is hardly surprising. I should have slaughtered you and your malformed brethren long ago.")
			Illidan:PlaySoundToSet(11463)
			Illidan:Emote(PlayEmote.EMOTE_ONESHOT_QUESTION,2500)
			ScenePart = 4
			Unit:RegisterEvent("Akama.IllidanDialog", 2500, 1)	
		elseif(ScenePart == 4) then	
			Unit:SendChatMessage(CHAT_MSG_MONSTER_YELL, 0, "We've come to end your reign, Illidan. My people and all of Outland shall be free!")
			Unit:PlaySoundToSet(11389)
			Unit:Emote(PlayEmote.EMOTE_ONESHOT_POINT,1100)
			ScenePart = 5
			Unit:RegisterEvent("Akama.IllidanDialog", 1100, 1)
		elseif(ScenePart == 5) then
			Unit:Emote(PlayEmote.EMOTE_ONESHOT_TALK,1200)
			ScenePart = 6
			Unit:RegisterEvent("Akama.IllidanDialog", 1200, 1)
		elseif(ScenePart == 6) then
			Unit:Emote(PlayEmote.EMOTE_ONESHOT_SALUTE,1200)
			ScenePart = 7
			Unit:RegisterEvent("Akama.IllidanDialog", 1200, 1)	
		elseif(ScenePart == 7) then
			Illidan:SendChatMessage(CHAT_MSG_MONSTER_YELL, 0, "Boldly said. But I remain unconvinced.")
			Illidan:PlaySoundToSet(11464)
			Illidan:Emote(PlayEmote.EMOTE_ONESHOT_QUESTION,1800) 
			ScenePart = 8
			Unit:RegisterEvent("Akama.IllidanDialog", 1800, 1)	
		elseif(ScenePart == 8) then	
			Unit:SendChatMessage(CHAT_MSG_MONSTER_YELL, 0, "The time has come! The moment is at hand!")
			Unit:PlaySoundToSet(11380)
			Unit:Emote(PlayEmote.EMOTE_ONESHOT_SHOUT,1400)
			ScenePart = 9
			Unit:RegisterEvent("Akama.IllidanDialog", 1400, 1)	
		elseif(ScenePart == 9) then
			Unit:Emote(PlayEmote.EMOTE_ONESHOT_ROAR,1500)
			ScenePart = 10
			Unit:RegisterEvent("Akama.IllidanDialog", 1500, 1)	
		elseif(ScenePart == 10) then	
			Illidan:SendChatMessage(CHAT_MSG_MONSTER_YELL, 0, "You are not prepared!")
			Illidan:PlaySoundToSet(11466)
			Illidan:Emote(PlayEmote.EMOTE_ONESHOT_CUSTOMSPELL05,2500)
			Illidan:SetFieldFlags(UNIT_NPC_EMOTESTATE, EMOTE_ONESHOT_READY1H)
			ScenePart = 11
			Unit:RegisterEvent("Akama.IllidanDialog", 500, 1)
		elseif(ScenePart == 11) then	
			--Combat starts
			Unit:SetCombatCapable(0)
			Illidan:SetCombatCapable(0)
			
			Unit:AttackReaction(Illidan, 500, 0)
			Illidan:AttackReaction(Unit, 500, 0)
			
			local RightGate = GetGameObjectNearestCoords(745.07, 241.802, 354.292, 200000);
			local LeftGate  = GetGameObjectNearestCoords(744.829, 369.276, 354.324, 200001);

			if(RightGate ~= nil) then
				RightGate:SetFieldFlags(GAMEOBJECT_STATE, 1)
			end
			if(LeftGate ~= nil) then
				LeftGate:SetFieldFlags(GAMEOBJECT_STATE, 1)
			end
	end
end

RegisterUnitGossipEvent(229900, 1, "Akama.OnTalk")
RegisterUnitGossipEvent(229900, 2, "Akama.OnSelect")		
RegisterUnitEvent(229900, 19, "Akama.OnReachWp")














--[[ OTHER CREATURES -- ]] 


--[[ Flame of Azzinoth -- ]]

function FlameOfAzzinoth_OnEnterCombat(Unit,Event)
	Unit:CastSpell(40637)
	Unit:RegisterEvent("FlameOfAzzinoth_FlameBlast", 15000, 0)
end

function FlameOfAzzinoth_FlameBlast(Unit,Event)
	if (plr ~= nil) then 
		return
	else
	Unit:FullCastSpellOnTarget(40631,plr)
end
end

function FlameOfAzzinoth_OnLeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

function FlameOfAzzinoth_OnDied(Unit,Event)
	Unit:Despawn(0,0)
	Unit:RemoveEvents()
end

RegisterUnitEvent(229970, 1, "FlameOfAzzinoth_OnEnterCombat")
RegisterUnitEvent(229970, 2, "FlameOfAzzinoth_OnLeaveCombat")
RegisterUnitEvent(229970, 4, "FlameOfAzzinoth_OnDied")

--[[ Warglaive Of Azzinoth -- ]]

function WarglaiveOfAzzinoth_OnSpawn(Unit,Event)
if (Unit:GetX() == 677.368286) then
	Unit:SetUInt32Value(UnitField.UNIT_FIELD_FLAGS,UnitFieldFlags.UNIT_FLAG_NOT_SELECTABLE+UnitFieldFlags.UNIT_FLAG_NOT_ATTACKABLE_9)
	Unit:SetUInt64Value(UnitField.UNIT_FIELD_CHANNEL_OBJECT,elem1:GetGUID())
	Unit:SetUInt32Value(UnitField.UNIT_CHANNEL_SPELL,39857)
elseif (Unit:GetX() == 676.717346) then
	Unit:SetUInt32Value(UnitField.UNIT_FIELD_FLAGS,UnitFieldFlags.UNIT_FLAG_NOT_SELECTABLE+UnitFieldFlags.UNIT_FLAG_NOT_ATTACKABLE_9)
	Unit:SetUInt64Value(UnitField.UNIT_FIELD_CHANNEL_OBJECT,elem2:GetGUID())
	Unit:SetUInt32Value(UnitField.UNIT_CHANNEL_SPELL,39857)
end
end

RegisterUnitEvent(229960, 18, "WarglaiveOfAzzinoth_OnSpawn")

--[[ Flame Crash[Visual/Damage] -- ]]
	
function FlameCrash_OnSpawn(Unit,Event)
	Unit:SetCombatMeleeCapable(1)
	Unit:FullCastSpell(40836)
	Unit:RegisterEvent("FlameCrash_VisualEffect", 000, 0)
end

function FlameCrash_VisualEffect(Unit,Event)
	Unit:FullCastSpell(40836)
end

RegisterUnitEvent(23336, 18, "FlameCrash_OnSpawn")

--[[ Demon Flame -- ]]

function DemonFlame_OnSpawn(Unit,Event)
	Unit:CastSpell(39908)
end

RegisterUnitEvent(230690, 18, "DemonFlame_OnSpawn")


--[[ Udalo -- ]]

function Udalo_OnSpawn(Unit,Event)
	Unit:RegisterEvent("Udalo_Say", 3000, 1)
end

function Udalo_Say(Unit,Event)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_SAY,LangField.LANG_UNIVERSAL,"You are not alone, Akama.")
	Unit:RegisterEvent("Udalo_Salute", 13000, 1)
end

function Udalo_Salute(Unit,Event)
	Unit:Emote(PlayEmote.EMOTE_ONESHOT_SALUTE, 2000)
end
RegisterUnitEvent(23410, 18, "Udalo_OnSpawn")

--[[ Olum -- ]]

function Olum_OnSpawn(Unit,Event)
	Unit:RegisterEvent("Olum_Say", 5500, 1)
end

function Olum_Say(Unit,Event)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_SAY,LangField.LANG_UNIVERSAL,"Your people will always be with you.")
	Unit:RegisterEvent("Olum_Salute", 13000, 1)
end

function Olum_Salute(Unit,Event)
	Unit:Emote(PlayEmote.EMOTE_ONESHOT_SALUTE, 2000)
end

RegisterUnitEvent(23411, 18, "Olum_OnSpawn")
