local L = LibStub("AceLocale-3.0"):GetLocale("SmexyMail");
local SmexyMail = SmexyMail;

function SmexyMail:trim(s)
	return SmexyMail:rtrim(SmexyMail:ltrim(s));
end;

function SmexyMail:ltrim(s)
	return (s:gsub("^%s*", ""));
end;

function SmexyMail:rtrim(s)
	local n = #s;
	while n > 0 and s:find("^%s", n) do 	
		n = n - 1;
	end;
	return s:sub(1, n);
end;

SmexyMail.Colors = {
	CLASSIC		= "|cFFE6CC80",
	TBC			= "|cFF1EFF00",
	WOTLK		= "|cFF66ccff",
	CATA		= "|cFFff3300",
	MOP			= "|cFF00FF96",
	WOD			= "|cFFff8C1A",
	LEGION		= "|cFFA335EE",
	BFA 		= "|cFFFF7D0A",
	SHADOWLANDS = "|cFFE6CC80",
	
	yellow 		= "|cFFFFFF00",
	white 		= "|cFFFFFFFF",

	common 		= "|cFFFFFFFF",
	uncommon 	= "|cFF1EFF00",
	rare 		= "|cFF0070DD",
	epic 		= "|cFFA335EE",
	legendary 	= "|cFFFF8000",
	artifact 	= "|cFFE6CC80",
	wowtoken	= "|cFF00CCFF",

	DeathKnight = "|cFFC41F3B",
	DemonHunter = "|cFFA330C9",
	Druid 		= "|cFFFF7D0A",
	Hunter 		= "|cFFABD473",
	Mage 		= "|cFF69CCF0",
	Monk 		= "|cFF00FF96",
	Paladin 	= "|cFFF58CBA",
	Priest 		= "|cFFFFFFFF",
	Rogue 		= "|cFFFFF569",
	Shaman 		= "|cFF0070DE",
	Warlock 	= "|cFF9482C9",
	Warrior 	= "|cFFC79C6E",
};

SmexyMail.Profs = {
	[1]   	= L["Alchemist"],
	[2]   	= L["Archaeologist"],
	[3]   	= L["Blacksmith"],
	[4]   	= L["Cook"],
	[5]   	= L["Enchanter"],
	[6]   	= L["Engineer"],
	[7]  	= L["Inscriptionist"],
	[8]  	= L["Jewelcrafter"],
	[9]  	= L["Leatherworker"],
	[10]  	= L["Tailor"],
};