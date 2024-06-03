add_rules("plugin.compile_commands.autoupdate", {outputdir = "."})

add_rules("mode.release")

set_languages("c++17")
add_includedirs(os.projectdir())

add_requires("gtest 1.13.0", {configs = {main = true}})
add_requires("protobuf-cpp")

target("endless_run_envs.proto", function()
    set_kind("object")
    add_rules("protobuf.cpp")
    add_files("proto/*.proto")
    add_packages("protobuf-cpp", {public = true})
end)

for i = 1, 10 do
    target("endless_run_envs." .. tostring(i), function()
        set_kind("object")
        add_files(path.join("src", tostring(i) .. ".cc"))
        add_deps("endless_run_envs.proto")
    end)
end

target("test", function()
    set_kind("binary")
    set_default(false)
    add_tests("default")
    add_files("test.cc")
    add_packages("gtest")
    for i = 1, 10 do
        add_deps("endless_run_envs." .. tostring(i))
    end
end)
