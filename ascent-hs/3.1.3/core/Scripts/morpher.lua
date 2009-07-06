local npcid = 91000
function morpher_on_gossip(unit, event, player)
unit:GossipCreateMenu(50, player, 0)
unit:GossipMenuAddItem(0, "Bosses 1", 1, 0)
unit:GossipMenuAddItem(0, "Bosses 2", 2, 0)
unit:GossipMenuAddItem(0, "Bosses 3", 3, 0)
unit:GossipMenuAddItem(0, "Bosses 4", 4, 0)
unit:GossipMenuAddItem(0, "Mechanical 1", 5, 0)
unit:GossipMenuAddItem(0, "Mechanical 2", 6, 0)
unit:GossipSendMenu(player)
end

function morpher_submenus(unit, event, player, id, intid, code)
if(intid == 999) then
unit:GossipCreateMenu(99, player, 0)
unit:GossipMenuAddItem(0, "Bosses 1", 1, 0)
unit:GossipMenuAddItem(0, "Bosses 2", 2, 0)
unit:GossipMenuAddItem(0, "Bosses 3", 3, 0)
unit:GossipMenuAddItem(0, "Bosses 4", 4, 0)
unit:GossipMenuAddItem(0, "Mechanical 1", 5, 0)
unit:GossipMenuAddItem(0, "Mechanical 2", 6, 0)
unit:GossipSendMenu(player)
end

if(intid == 6) then
unit:GossipCreateMenu(55, player, 0)
unit:GossipMenuAddItem(1, "Morph Me Into A-Me Demorph", 6001, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Advanced Target Dummy", 6002, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Arcane Protector", 6003, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Arcane Servant", 6004, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Arcanite Dragonling", 6005, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Arcatraz Sentinel", 6006, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Archery Target", 6007, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Area 52 Death Machine", 6008, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Battle Chicken", 6009, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Crimson Cannon", 6010, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Death's Door Fel Cannon", 6011, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Electrocutioner 6000", 6012, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Gnome Drag Car", 6013, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Goblin Drag Car", 6014, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Love Fool", 6015, 0)
unit:GossipMenuAddItem(1, "DeMorph Me Into My Self", 6016, 0)
unit:GossipMenuAddItem(1, "Vissza", 999, 0)
unit:GossipSendMenu(player)
end

if(intid == 1) then
unit:GossipCreateMenu(51, player, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Kil'jaden", 1001, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Archimonde", 1002, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Akil'zon", 1003, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Al'ar", 1004, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Anetheron", 1005, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Attumen the Huntsman", 1006, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Azgalor", 1007, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Brutallus", 1008, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Doom Lord Kazzak", 1009, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Doomwalker", 1010, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Fathom-Lord Karathress", 1011, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Felmyst", 1012, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Gruul the Dragonkiller", 1013, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Gurtogg Bloodboil", 1014, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Halazzi", 1015, 0)
unit:GossipMenuAddItem(1, "Vissza", 999, 0)
unit:GossipSendMenu(player)
end

if(intid == 2) then
unit:GossipCreateMenu(52, player, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Hex Lord Malacrass", 2001, 0)
unit:GossipMenuAddItem(1, "Morph Me Into High Astromancer Solarian", 2002, 0)
unit:GossipMenuAddItem(1, "Morph Me Into High King Maulgar", 2003, 0)
unit:GossipMenuAddItem(1, "Morph Me Into High Warlord Naj'entus", 2004, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Hydross the Unstable", 2005, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Illidan Stormrage", 2006, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Jan'alai", 2007, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Kalecgos", 2008, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Kael'thas Sunstrider", 2009, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Kaz'rogal", 2010, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Kil'jaeden", 2011, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Lady Vashj", 2012, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Leotheras the Blind", 2013, 0)
unit:GossipMenuAddItem(1, "Morph Me Into M'uru", 2014, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Magtheridon", 2015, 0)
unit:GossipMenuAddItem(1, "Vissza", 999, 0)
unit:GossipSendMenu(player)
end

if(intid == 3) then
unit:GossipCreateMenu(53, player, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Maiden of Virtue", 3001, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Moroes", 3002, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Morogrim Tidewalker", 3003, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Mother Shahraz", 3004, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Nalorakk", 3005, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Netherspite", 3006, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Nightbane", 3007, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Prince Malchezaar", 3008, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Rage Winterchill", 3009, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Reliquary of the Lost", 3010, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Romulo", 3011, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Julianne", 3012, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Shade of Akama", 3013, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Shade of Aran", 3014, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Supremus", 3015, 0)
unit:GossipMenuAddItem(1, "Vissza", 999, 0)
unit:GossipSendMenu(player)
end

if(intid == 4) then
unit:GossipCreateMenu(54, player, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Terestian Illhoof", 4001, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Teron Gorefiend", 4002, 0)
unit:GossipMenuAddItem(1, "Morph Me Into The Big Bad Wolf", 4003, 0)
unit:GossipMenuAddItem(1, "Morph Me Into The Curator", 4004, 0)
unit:GossipMenuAddItem(1, "Morph Me Into The Lurker Below", 4005, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Void Reaver", 4006, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Zul'jin", 4007, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Onyxia", 4008, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Maiev Shadowsong Large", 4009, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Maiev Shadowsong Normal", 4010, 0)
unit:GossipMenuAddItem(1, "Vissza", 999, 0)
unit:GossipSendMenu(player)
end

if(intid == 5) then
unit:GossipCreateMenu(54, player, 0)
unit:GossipMenuAddItem(1, "Morph Me into XT:9", 5001, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Walking Bomb", 5002, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Unpainted Mechanostrider", 5003, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Truesilver Boar", 5004, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Tonk Mine", 5005, 0)
unit:GossipMenuAddItem(1, "Morph Me Into The Threshwackonator 4100", 5006, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Techbot", 5007, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Swift White Mechanostrider", 5008, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Goblin Steam Tonk", 5009, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Red Mechanostrider", 5010, 0)
unit:GossipMenuAddItem(1, "Morph Me Into R-3D0", 5011, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Peacekeeper Security Suit", 5012, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Overwatch Mark I", 5013, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Naga Distiller", 5014, 0)
unit:GossipMenuAddItem(1, "Morph Me Into Mekgineer Thermaplugg", 5015, 0)
unit:GossipMenuAddItem(1, "Vissza", 999, 0)
unit:GossipSendMenu(player)
end

if(intid == 6015) then
player:SetModel(16011)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 6014) then
player:SetModel(10318)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 6013) then
player:SetModel(2490)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 6012) then
player:SetModel(6915)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 6011) then
player:SetModel(18505)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 6010) then
player:SetModel(10753)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 6009) then
player:SetModel(6909)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 6008) then
player:SetModel(20658)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 6007) then
player:SetModel(3020)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 6006) then
player:SetModel(19971)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 6005) then
player:SetModel(12489)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 6004) then
player:SetModel(14273)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 6003) then
player:SetModel(16841)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 6002) then
player:SetModel(1555)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 6001) then
player:SetModel(0)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 5001) then
player:SetModel(1269)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 5002) then
player:SetModel(6977)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 5003) then
player:SetModel(9476)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 5004) then
player:SetModel(15922)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 5005) then
player:SetModel(15402)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 5006) then
player:SetModel(5386)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 5007) then
player:SetModel(7288)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 5008) then
player:SetModel(14376)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 5009) then
player:SetModel(15381)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 5010) then
player:SetModel(9473)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 5011) then
player:SetModel(20417)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 5012) then
player:SetModel(8369)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 5013) then
player:SetModel(5299)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 5014) then
player:SetModel(17423)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 5015) then
player:SetModel(6980)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end
if(intid == 1001) then
player:SetModel(23200)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 1002) then
player:SetModel(18292)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 1003) then
player:SetModel(21630)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 1004) then
player:SetModel(21069)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 1005) then
player:SetModel(21069)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 1006) then
player:SetModel(16416)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 1007) then
player:SetModel(18526)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 1008) then
player:SetModel(22711)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 1009) then
player:SetModel(17887)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 1010) then
player:SetModel(21435)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 1011) then
player:SetModel(20662)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 1012) then
player:SetModel(22838)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 1013) then
player:SetModel(18698)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 1014) then
player:SetModel(21443)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 1015) then
player:SetModel(21632)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 2001) then
player:SetModel(22332)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 2002) then
player:SetModel(18239)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 2003) then
player:SetModel(18649)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 2004) then
player:SetModel(21174)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 2005) then
player:SetModel(20162)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 2006) then
player:SetModel(21135)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 2007) then
player:SetModel(21633)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 2008) then
player:SetModel(23487)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 2009) then
player:SetModel(20023)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 2010) then
player:SetModel(17886)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 2011) then
player:SetModel(23200)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 2012) then
player:SetModel(20748)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 2013) then
player:SetModel(20514)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 2014) then
player:SetModel(23404)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 2015) then
player:SetModel(18527)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 3001) then
player:SetModel(16198)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 3002) then
player:SetModel(16540)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 3003) then
player:SetModel(20739)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 3004) then
player:SetModel(21252)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 3005) then
player:SetModel(21631)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 3006) then
player:SetModel(15363)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 3007) then
player:SetModel(18062)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 3008) then
player:SetModel(19274)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 3009) then
player:SetModel(17444)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 3010) then
player:SetModel(21146)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 3011) then
player:SetModel(17067)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 3012) then
player:SetModel(17068)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 3013) then
player:SetModel(21357)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 3014) then
player:SetModel(16621)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 3015) then
player:SetModel(21145)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 4001) then
player:SetModel(11343)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 4002) then
player:SetModel(21576)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 4003) then
player:SetModel(17053)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 4004) then
player:SetModel(16958)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 4005) then
player:SetModel(20216)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 4006) then
player:SetModel(18951)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 4007) then
player:SetModel(21899)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 4008) then
player:SetModel(8570)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end

if(intid == 4010) then
player:SetModel(20628)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end


if(intid == 4009) then
player:SetModel(21349)
unit:SendChatMessage(12, 0, "You are morphed use .demorph or relog to remove it")
player:GossipComplete(player)
end
end

RegisterUnitGossipEvent(91000, 1, "morpher_on_gossip")
RegisterUnitGossipEvent(91000, 2, "morpher_submenus")