add_rules("plugin.compile_commands.autoupdate", {outputdir = "."})
add_rules("mode.release", "mode.debug")
set_languages("c++17")

add_requires("date master")

target("main", function()
    set_kind("binary")
    add_files("main.cc")
    add_packages("data")
end)
