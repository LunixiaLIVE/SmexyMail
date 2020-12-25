local L = LibStub("AceLocale-3.0"):GetLocale("SmexyMail");
local SmexyMail = SmexyMail;

local function CharacterPop()
	local list = "";
	for c, d in pairs(SmexyMailDB.Characters) do
		list = list .. d .. " ";
	end;
	print(d);
	return d;
end;

SmexyMail.options = {
	name = "SmexyMail Options",
	type = 'group',
	args = {	
		Enabled = {
			type = "toggle",
			name = "Enable SmexyMail",
			desc = "Enables/Disables SmexyMail.",
			width = "full",
			get = function(info) return SmexyMailDB.profile.Enabled; end,
			set = function(info, v) SmexyMailDB.profile.Enabled = v; end,
			order = 1,
		},
		
		Section1 = {
			type = "header",
			name = "",
			order = 2,
		},
		
		CharacterAdd = {
			type = "input",
			width = "normal",
			name = "Character-Realm",
			desc = "Type the name of the character-realm you want to configure mail for.",
			set = function(info, v)
				if not SmexyMailDB["Characters"][v] then
					table.insert(SmexyMailDB["Characters"],v);
				else
					print(v.." already exists in the table.")
				end;
				--SmexyMail.options.args.CharacterSelect.Values = SmexyMailDB.Characters;
			end,
			order = 3,
		},
		
		Section2 = {
			type = "header",
			name = "",
			order = 4,
		},
		
		CharacterSelect = {
			type = "select",
			name = "Characters",
			style = "radio",
			values = SmexyMailDB.Characters,
			set = function(info, v)
				print(v);
				SmexyMailDB.Temp.Character = v;
			end,
			get = function(info, v)
				print(v);
				return SmexyMailDB.Temp.Character;
			end,
			order = 5,
		},
		
		RefreshBtn = {
			type = "execute",
			width = "half",
			name = "Refresh",
			desc = "Refreshes Character List.",
			func = function()
				SmexyMail.options.args.CharacterSelect.values = SmexyMailDB.Characters;
			end,
			order = 6,
		},
		
		Section3 = {
			type = "header",
			name = "",
			order = 7,
		},
		
		ProfessionSelect = {
			type = "select",
			name = "Professions",
			style = "radio",
			values = {
				"Alchemist",
				"Archaeologist",
				"Blacksmith",
				"Cook",
				"Enchanter",
				"Engineer",
				"Inscriptionist",
				"Jewelcrafter",
				"Leatherworker",
				"Tailor",
			},
			set = function(...)
				print(...);
				SmexyMailDB.Temp.Profession = v;
			end,
			get = function(...)
				print(...);
				return SmexyMailDB.Temp.Profession;
			end,
			order = 8,
		},
		
		Section5 = {
			type = "header",
			name = "About",
			order = 100,
		},
		
		About = {
			type = "description",
			name = SmexyMail.Colors.wowtoken .. "BattleTag & Discord: Lunixia#1737\r\n" ..
					"|cFFCC66FFTwitch: https://www.twitch.tv/LunixiaLIVE\r\n" ..
					"|rCheck out my other addons:\r\n" ..	
					"|cFFFF8000SmexyMats(Retail)\r\n" ..
					"|cFFFF8000SmexyMats(Classic)\r\n" ..
					"|cFFFF8000SmexyScaleUI(SSUI)\r\n" ..  
					"|cFFFF8000SmexyGMO(SGMO)",
			fontSize = "medium",
			order = 101,
		},
	},
};