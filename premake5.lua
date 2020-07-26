solution "quelsolaar"
   filename "quelsolaar"
   location "projects"
   configurations { "Debug", "Release" }
   platforms { "Win32", "Win64" }

   filter "platforms:Win32"
      system "Windows"
      architecture "x86"

   filter "platforms:Win64"
      system "Windows"
      architecture "x86_64"

project "betray"
   kind "StaticLib"
   language "C"
   targetdir( "build" )
   
   links { "imagine" }

   includedirs { "Forge", "Imagine" }

   files { "Betray/**.h", "Betray/**.c" }
   removefiles { 
      "Betray/android_native_app_glue.c",
      "Betray/b_android_key_codes.c",
      "Betray/b_android_main.c",
      "Betray/betray_miqro_test.c",
      "Betray/betray_relinquish_test.c",
      "Betray/betray_relinquish_test_android.c",
      "Betray/betray_plugin_**.c",
      "Betray/betray_test.c"
   }
   
   filter "configurations:Debug"
      symbols "On"
      defines { "_DEBUG" }

   filter "configurations:Release"
      optimize "On"
      defines { "NDEBUG" }

project "betray_test"
   kind "ConsoleApp"
   language "C"
   targetdir( "build" )

   libdirs { "build" }
   links { "relinquish", "betray", "forge" }
   
   includedirs { "Betray", "Relinquish", "Forge" }
   
   files {"Betray/betray_test.c"}
   
   filter { "system:windows" }
		links { "OpenGL32" }
		
	filter { "system:not windows" }
		links { "GL" }

   filter "configurations:Debug"
      symbols "On"
      defines { "_DEBUG" }

   filter "configurations:Release"
      optimize "On"
      defines { "NDEBUG" }

project "deceive"
   kind "StaticLib"
   language "C"
   targetdir( "build" )
   
   links { "gather", "betray", "enough", "seduce" }

   includedirs { "Gather", "Betray", "Forge", "Enough", "Verse", "Seduce", "Relinquish"}

   files { "Deceive/**.h", "Deceive/**.c" }
   
   filter "configurations:Debug"
      symbols "On"
      defines { "_DEBUG" }

   filter "configurations:Release"
      optimize "On"
      defines { "NDEBUG" }

project "enough"
   kind "StaticLib"
   language "C"
   targetdir( "build" )

   links { "forge", "verse" }
   includedirs { "Forge", "Verse"}

   files { "Enough/**.h", "Enough/**.c" }
   
   filter "configurations:Debug"
      symbols "On"
      defines { "_DEBUG" }

   filter "configurations:Release"
      optimize "On"
      defines { "NDEBUG" }

project "forge"
   kind "StaticLib"
   language "C"
   targetdir( "build" )
   
   files { "Forge/**.h", "Forge/**.c" }
      
   filter "configurations:Debug"
      symbols "On"
      defines { "_DEBUG" }

   filter "configurations:Release"
      optimize "On"
      defines { "NDEBUG" }
      
project "gather"
   kind "StaticLib"
   language "C"
   targetdir( "build" )
   
   links { "forge", "imagine" , "betray", "relinquish" }

   includedirs { "Forge", "Imagine", "Betray", "Relinquish"}

   files { "Gather/**.h", "Gather/**.c" }
   removefiles { "Gather/gather_plugin_ffmpeg.c" }
   
   filter "configurations:Debug"
      symbols "On"
      defines { "_DEBUG" }

   filter "configurations:Release"
      optimize "On"
      defines { "NDEBUG" }

project "imagine"
   kind "StaticLib"
   language "C"
   targetdir( "build" )
   
   includedirs { "Forge" }

   files { "Imagine/**.h", "Imagine/**.c" }
   removefiles {
      "Imagine/imagine_test.c"
   }
   
   filter "configurations:Debug"
      symbols "On"
      defines { "_DEBUG" }

   filter "configurations:Release"
      optimize "On"
      defines { "NDEBUG" }

project "loq_auriou"
   kind "ConsoleApp"
   language "C"
   targetdir( "build" )
   
   libdirs { "build" }
   links { "forge", "imagine", "betray", "enough", "deceive", "seduce", "relinquish", "persuade" }
   includedirs { "Forge", "Imagine", "Betray", "Enough", "Verse", "Seduce", "Relinquish", "Deceive", "Persuade" }

   files { "Loq_Airou/**.h", "Loq_Airou/**.c" }
   
   filter { "system:windows" }
      links { "Ws2_32", "OpenGL32" }
		
	filter { "system:not windows" }
		links { "libws2_32", "GL" }
   
      filter "configurations:Debug"
      symbols "On"
      defines { "_DEBUG" }

   filter "configurations:Release"
      optimize "On"
      defines { "NDEBUG" }

project "persuade"
   kind "StaticLib"
   language "C"
   targetdir( "build" )
   
   includedirs { "Forge", "Enough", "Verse" }

   files { "Persuade/**.h", "Persuade/**.c" }
   
   filter "configurations:Debug"
      symbols "On"
      defines { "_DEBUG" }

   filter "configurations:Release"
      optimize "On"
      defines { "NDEBUG" }

project "relinquish"
   kind "StaticLib"
   language "C"
   targetdir( "build" )
   
   links { "betray" }
      
   includedirs { "Betray", "Forge" }

   files { "Relinquish/**.h", "Relinquish/**.c" }
   removefiles { "Relinquish/relinquish_test.c" }
   
   filter "configurations:Debug"
      symbols "On"
      defines { "_DEBUG" }

   filter "configurations:Release"
      optimize "On"
      defines { "NDEBUG" }


project "relinquish_test"
   kind "ConsoleApp"
   language "C"
   targetdir( "build" )

   libdirs { "build" }
   links { "relinquish", "betray", "forge" }
   
   includedirs { "Betray", "Relinquish", "Forge" }
   
   files {"relinquish/relinquish_test.c"}
   
   filter { "system:windows" }
		links { "OpenGL32" }
		
	filter { "system:not windows" }
		links { "GL" }

   filter "configurations:Debug"
      symbols "On"
      defines { "_DEBUG" }

   filter "configurations:Release"
      optimize "On"
      defines { "NDEBUG" }


project "seduce"
   kind "StaticLib"
   language "C"
   targetdir( "build" )
   
   includedirs { "Betray", "Forge", "Relinquish", "Enough", "Gather", "Loq_Airou", "Verse" }

   files { "Seduce/**.h", "Seduce/**.c" }
   removefiles { 
      "Seduce/seduce_test.c", 
      "Seduce/s_test.c",
      "Seduce/s_draw_buffer_old.c",
      "Seduce/seduce_persuade.c",
      "Seduce/seduce_editor**.c",
      "Seduce/seduce_manipulator_demo.c"
   }
   
   filter "configurations:Debug"
      symbols "On"
      defines { "_DEBUG" }

   filter "configurations:Release"
      optimize "On"
      defines { "NDEBUG" }


project "verse"
   kind "StaticLib"
   language "C"
   targetdir( "build" )
   
   files { "Verse/v_**.h", "Verse/v_**.c", "Verse/verse.h", "Verse/verse_header.h" }
   
   filter "configurations:Debug"
      symbols "On"
      defines { "_DEBUG" }

   filter "configurations:Release"
      optimize "On"
      defines { "NDEBUG" }


project "verse_server"
   kind "ConsoleApp"
   language "C"
   targetdir( "build" )

   libdirs { "build" }
   links { "verse" }
   
   files { "Verse/vs_**.h", "Verse/vs_**.c" }

   filter { "system:windows" }
		links { "Ws2_32" }
		
	filter { "system:not windows" }
		links { "libws2_32" }

   filter "configurations:Debug"
      symbols "On"
      defines { "_DEBUG" }

   filter "configurations:Release"
      optimize "On"
      defines { "NDEBUG" }