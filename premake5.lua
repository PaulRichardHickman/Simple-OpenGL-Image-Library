project "SOIL"
    kind "StaticLib"
    language "C"
    
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
        buildoptions { "-std=c11", "-lgdi32" }
		systemversion "latest"
		cppdialect "C++17"
        staticruntime "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"