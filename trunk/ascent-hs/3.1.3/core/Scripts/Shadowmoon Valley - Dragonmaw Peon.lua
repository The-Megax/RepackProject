--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

local cry_delay = 100000
local announces = {}
local announcei = 3
local choice = 1

RegisterUnitEvent(22252, 6, "DragonmawPeon_Random_Setup")
announces[1] = "It put the mutton in the stomach!"
announces[2] = "WHY IT PUT DA BOOTERANG ON DA SKIN?! WHY?!"
announces[3] = "You is bad orc... baaad... or... argh!"

function DragonmawPeon_Random_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function DragonmawPeon_Random_Setup(pUnit, Event)
   pUnit:RegisterEvent("DragonmawPeon_Random_Tick", cry_delay, 0)
end

function DShaman_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DShaman_LShield", 20000, 0)
	pUnit:RegisterEvent("DShaman_Bloodlust", 33000, 0)
end

function DShaman_LShield(pUnit,Event)
	pUnit:CastSpell(12550)
end

function DShaman_Bloodlust(pUnit,Event)
	pUnit:CastSpell(6742)
end

function DShaman_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function DShaman_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end