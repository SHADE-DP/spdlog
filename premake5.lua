project "spdlog"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/**.h",
		"include/**.hpp",
		"src/**.cpp",
	}

	includedirs
	{
	  "include",
	}

	links
	{
	}

	defines
	{
		"SPDLOG_COMPILED_LIB"
	}

	disablewarnings { "warnings" }

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"