--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]
local OBJECT_END                                            =	0x006
local UNIT_FIELD_FLAGS                                       	= OBJECT_END + 0x028
local UNIT_FLAG_NOT_ATTACKABLE_9           = 0x00000100
local UNIT_FLAG_NOT_SELECTABLE = 0x02000000

function Kael_OnEnterCombat(Unit,Event)
	Unit:SetCombatMeleeCapable(1)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Don't look so smug! I know what you're thinking, but Tempest Keep was merely a set back. Did you honestly believe I would trust the future to some blind, half-night elf mongrel? Hahahaha... Oh no, no, no, he was merely an instrument, a stepping stone to a much larger plan! It has all led to this...and this time, you will not interfere!")
	Unit:PlaySoundToSet(12413)
	Unit:SetUInt32Value(UNIT_FIELD_FLAGS,UNIT_FLAG_NOT_SELECTABLE+UNIT_FLAG_NOT_ATTACKABLE_9)	
	Unit:RegisterEvent("Kael_Phase1", 38000, 1) -- This is blizzlike timing
end

function Kael_Phase1(Unit,Event)
	Unit:RemoveEvents()
	Unit:SetCombatMeleeCapable(0)
	Unit:RegisterEvent("Kael_FireBolt", 2500, 0)
	Unit:RegisterEvent("Kael_PhoenixSummon", 25000, 2)
	Unit:RegisterEvent("Kael_FlameStrike", 21000, 0)	
	if Unit:GetHealthPct() > 50 then
 	Unit:RegisterEvent("Kael_Gravity", 1000, 0)
	end
end

function Kael_Fireball(Unit,Event)
	Unit:FullCastSpellOnTarget(46164,Unit:GetMainTank())
end

function Kael_PhoenixSummon(Unit,Event)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Vengeance burns!")
	Unit:PlaySoundToSet(12415)
	local plr = Unit:GetRandomPlayer(7)
    if type(plr) == "userdata" then
	Unit:SpawnCreature(24674 , plr:GetX(), plr:GetY(), plr:GetZ(), plr:GetO(), 14, 0) 
	end
end

function Kael_FlameStrike(Unit,Event)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Felomin ashal! ")
	Unit:PlaySoundToSet(12417)
	local plr = Unit:GetRandomPlayer(3)
	Unit:SpawnCreature(24666 , plr:GetX(), plr:GetY(), plr:GetZ(), plr:GetO(), 14, 5) -- Should add his insane AI!
	if plr == nil then
	return
	end
end	


function Kael_Gravity(Unit,Event) -- Fly Phase.	 No more basic spells. I need spell handeler for it!
	Unit:RemoveEvents()
	Unit:SetCombatMeleeCapable(1)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"I'll turn your world...upside...down.")
	Unit:PlaySoundToSet(12418)
	Unit:FullCastSpell(44224)
	Unit:RegisterEvent("Kael_Week", 30000, 1)
end

function Kael_Week(Unit,Event)
	Unit:SetCombatMeleeCapable(1)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Master, grant me strength.")
	Unit:PlaySoundToSet(12419)
	Unit:FullCastSpell(36185) -- stun fest, this is Dummy on wowhead, i dont know will it work
	Unit:RegisterEvent("Kael_Again", 10000, 1) -- again Gravity
end

function Kael_Again(Unit,Event) -- this is gravity phase
	Unit:RemoveEvents()
    Unit:SetCombatMeleeCapable(1)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"Do not get...too comfortable.")
	Unit:PlaySoundToSet(12420)
	Unit:FullCastSpell(44224)
	Unit:RegisterEvent("Kael_Week", 30000, 1)
end

function Kael_OnDied(Unit, event, player)
	Unit:SendChatMessage(ChatField.CHAT_MSG_MONSTER_YELL,LangField.LANG_UNIVERSAL,"My demise accomplishes nothing! The Master will have you! You will drown in your own blood! The world shall burn! Aaaghh!")
	Unit:PlaySoundToSet(12421)
	Unit:RemoveEvents()
end

function Kael_OnLeaveCombat(Unit, Event)
	Unit:RemoveEvents()	
end

function Phoenix_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("Phoenix_HellFire", 2500, 0)
end

function Phoenix_HellFire(Unit,Event)
	Unit:FullCastSpell(44199)
end
	
function Phoenix_OnDied(Unit, event, player)
	local x,y,z,o = Unit:GetX(),Unit:GetY(),Unit:GetZ(),Unit:GetO()
	Unit:SpawnCreature(24675 , x, y, z, o, 14, 10000) -- SUMMON EGG
	Unit:RemoveEvents()
end

function Phoenix_OnLeaveCombat(Unit, Event)
	Unit:RemoveEvents()	
end

function Egg_OnEnterCombat(Unit,Event)
	Unit:SetCombatMeleeCapable(1)
	local x,y,z,o = Unit:GetX(),Unit:GetY(),Unit:GetZ(),Unit:GetO()
	Unit:SpawnCreature(24674 , x, y, z, o, 14, 0) -- Summon Phoenix if not killed after 10 seconds 
end
	
function Egg_OnDied(Unit, event, player)
	Unit:RemoveEvents()
end

function FS_OnEnterCombat(Unit,Event)
	Unit:SetCombatMeleeCapable(1)
	Unit:SetUInt32Value(UNIT_FIELD_FLAGS,UNIT_FLAG_NOT_SELECTABLE+UNIT_FLAG_NOT_ATTACKABLE_9)
	Unit:RegisterEvent("FS_Cast", 4500, 1)
	Unit:RegisterEvent("FS_Cast2", 5000, 1)
end
	
function FS_Cast(Unit,Event)
	Unit:FullCastSpell(37428) 
end

function FS_Cast2(Unit,Event)
	Unit:FullCastSpell(37428) 
	Unit:RemoveFromWorld()
end




RegisterUnitEvent(24664, 1, "Kael_OnEnterCombat")
RegisterUnitEvent(24664, 2, "Kael_OnLeaveCombat")
RegisterUnitEvent(24664, 4, "Kael_OnDied")
RegisterUnitEvent(24674, 1, "Phoenix_OnEnterCombat")
RegisterUnitEvent(24674, 2, "Phoenix_OnLeaveCombat")
RegisterUnitEvent(24674, 4, "Phoenix_OnDied")
RegisterUnitEvent(24675, 1, "Egg_OnEnterCombat")
RegisterUnitEvent(24675, 4, "Egg_OnDied")
RegisterUnitEvent(24666, 1, "FS_OnEnterCombat")