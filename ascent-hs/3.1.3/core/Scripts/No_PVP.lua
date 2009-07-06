--Scripted by Lorre, Supporter Nightfall-WoW
--This script is still under development, This means it may not work yet.
local VERSION = "1.0"
local SERVER_NAME = "Szabad_Wow" --Change to your server name
local GUARD_FEATURE = "Enabled"     --[ Define wether the Guard is Enabled or Disabled. ]]
local NPC_ENTRYID = 4624
local type, pairs = type, pairs;

local function Death_Finger(pUnit, Player) 
    pUnit:FullCastSpellOnTarget(31984, Player) -- Change (5) to your spell <ID> 'Death touch may not work on all servers'.
end

--Do not edit below, Only if you know what your doing.
function Anti_Pvp_Guard_OnSpawn(pUnit, Event)
	if (GUARD_FEATURE == "Enabled") then
    pUnit:RegisterEvent("Check_PvP", 1200, 0)
	end
end

function Check_PvP(pUnit, Event, Player)
    local Player_W = pUnit:GetInRangePlayers()
    
    if (Player_W ~= nil) and (type(Player_W) == "table") then
	
	for index, player in pairs(Player_W) do
	if (player:IsPlayerAttacking() == true) then
	player:SendAreaTriggerMessage("PvP is not allowed in this area") --When some PvP in the not allowed area this messager will be send in Screen.
	pUnit:RegisterEvent("Death_Finger", 1500, 4)
	Death_Finger(pUnit, player)
		end
	end 
end 
end

RegisterUnitEvent(66666, 18, "Anti_Pvp_Guard_OnSpawn") 

--Never edit Below this
print (" ====================================================")
print ("   Loaded: Anti-Pvp-Guard (V"..VERSION..")")
print ("   Made by Lorre")
print ("   This script is Original released for Nightfall WoW")
print ("   This script now works on: ("..SERVER_NAME..")")
print (" ====================================================")