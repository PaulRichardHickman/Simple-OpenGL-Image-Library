project "SOIL"
    kind "StaticLib"
    language "C"
	cppdialect "C++17"
	staticruntime "on"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "src/image_DXT.h",
        "src/image_helper.h",
        "src/SOIL.h",
        "src/stb_image_aug.h",
        "src/std_DDS_aug.h",
        "src/std_DDS_aug_ch",
        "src/image_DXT.c",
        "src/image_helper.c",
        "src/SOIL.c",
        "src/stb_image_aug.c"
    }
	
	links
	{
		"opengl32"
	}
    
	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
	
	filter "configurations:Release"
		runtime "Debug"
		symbols "on"