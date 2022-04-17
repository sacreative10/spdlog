project "spdlog"
	location "."
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	staticruntime "on"
	files { "**.h", "**.cpp" }
	includedirs { "include" }
	filter "system:linux"
		includedirs { "/usr/include/elogind" }

	symbols "Off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
