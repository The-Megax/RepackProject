local npcid = 999940


FeuerwerksNPCs = {}
local Gossip_ID = 0

function Feuerwerk_Menu(Item)
	Item:GossipMenuAddItem(30, "Fireworks", Gossip_ID, 0)
end	 

function Feuerwerk_Select(Item,_,id)
	if (id == Gossip_ID) then
		for _,Unit in pairs(FeuerwerksNPCs) do
			Feuerwerk_Feuer(Unit)
		end
	end
end	

if PDA then
	PDA.AddModule(4, Feuerwerk_Menu)
	PDA.AddModule(2, Feuerwerk_Select)
	Gossip_ID = PDA.GetID()
end

function Feuerwerk_OnGossipTalk(Unit)
	Feuerwerk_Feuer(Unit)
end

function Feuerwerk_OnSpawn(Unit)
	table.insert(FeuerwerksNPCs, Unit)
end

function Feuerwerk_Feuer(Unit)
	Unit:CastSpell(46830)
	Unit:CastSpell(46835)
	Unit:CastSpell(46829)
	Unit:CastSpell(46847)
	Unit:CastSpell(11543)
	Unit:CastSpell(11542)
	Unit:CastSpell(47004)
	Unit:CastSpell(11352)
	Unit:CastSpell(6668)
	Unit:CastSpell(30161)
	Unit:CastSpell(11541)
	Unit:CastSpell(25465)
	Unit:CastSpell(11540)
end

RegisterUnitEvent(91001, 18, "Feuerwerk_OnSpawn")
RegisterUnitGossipEvent(91001, 1, "Feuerwerk_OnGossipTalk")