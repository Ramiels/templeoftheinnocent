-- Add Translations
local translations = ModTextFileGetContent( "data/translations/common.csv" );
if translations ~= nil then
	while translations:find("\r\n\r\n") do
		translations = translations:gsub("\r\n\r\n","\r\n");
	end
	local new_translations = ModTextFileGetContent( "mods/templeoftheinnocent/files/translations/common.csv" );
	translations = translations .. new_translations;
	ModTextFileSetContent( "data/translations/common.csv", translations );
end

-- Add materials
ModMaterialsFileAdd("mods/templeoftheinnocent/files/materials.xml")

-- Add gun actions
ModLuaFileAppend("data/scripts/gun/gun_actions.lua", "mods/templeoftheinnocent/files/scripts/gun/gun_actions.lua")