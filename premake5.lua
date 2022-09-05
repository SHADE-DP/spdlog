project "spdlog"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"%{prj.location}/include/*.h",
		"%{prj.location}/include/*.hpp",
		"%{prj.location}/src/*.cpp"
	}

	includedirs
	{
	  "%{prj.location}/include",
	}

	links
	{
	}

	defines
	{
		"SPDLOG_COMPILED_LIB"
	}

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