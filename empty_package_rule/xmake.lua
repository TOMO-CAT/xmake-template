add_rules("plugin.compile_commands.autoupdate", {outputdir = "."})
add_rules("mode.release", "mode.debug")
set_languages("c++17")

add_repositories("myrepo ./repo")

add_requires("foo")
add_requires("tomocat")

target("console_test", function()
    set_kind("binary")
    add_files("test.md")
    add_packages("foo")
    add_rules("@foo/markdown")

    add_files("main.cc")
    add_packages("tomocat")
    add_rules("@tomocat/check_test_target")
end)
