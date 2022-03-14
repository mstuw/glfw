project "GLFW"
    location "../../"
    kind "StaticLib"
    language "C"    
    staticruntime "On"
    
    targetdir "bin/build"
    objdir "bin/obj"
    
    files {
        "include/GLFW/glfw3.h",
        "include/GLFW/glfw3native.h",
        "src/glfw_config.h",
        "src/context.c",
        "src/init.c",
        "src/input.c",
        "src/monitor.c",
        "src/platform.c",
        "src/vulkan.c",
        "src/window.c",
        "src/null_*.h",        
        "src/null_*.c"
    }
    
    
    filter "system:windows"
        files {
            "src/win32*.c",
            "src/wgl_context.c",
            "src/egl_context.c",
            "src/osmesa_context.c"
        }
        
        defines {
            "_CRT_SECURE_NO_WARNINGS"
        } 
        
    filter { "system:windows", "platforms:*32" }
        defines {
            "_GLFW_WIN32"
        } 
        
        
    filter "system:linux"
        files {
            "src/x11_*.c",
            "src/xkb_unicode.c",
            "src/posix_*.c",
            "src/glx_context.c",
            "src/egl_context.c",
            "src/osmesa_context.c",
            "src/linux_joystick.c"
        }
         
         
    filter {}