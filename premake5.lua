project "glew"
    kind "StaticLib" -- Static library project
    language "C"
    staticruntime "on"
    
    -- Add your source files here
    includedirs { "include" }

    files{
        "include/**.h",
        "src/**.c"
    }

    defines {
        "GL_SILENCE_DEPRECATION"
    }
    
    filter "system:windows"
        architecture "x86_64"

    filter "system:linux"

    filter "system:macosx"

    filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"