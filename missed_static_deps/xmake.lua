add_rules("plugin.compile_commands.autoupdate", {outputdir = "."})

add_rules("mode.release")

set_languages("c++17")
add_includedirs(os.projectdir())

target("add", function()
    set_kind("object")
    add_files("src/add.cc")
end)

target("print", function()
    set_kind("object")
    add_files("src/print.cc")
end)

target("util", function()
    set_kind("static")
    add_deps("add", "print")
end)

target("main", function()
    set_kind("binary")
    add_files("main.cc")

    -- add_deps("util") -- fail
    add_ldflags("-Lbuild/linux/x86_64/release", "-lutil") -- successfully!
end)
