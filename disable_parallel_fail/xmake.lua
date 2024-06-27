add_rules("plugin.compile_commands.autoupdate", {outputdir = "."})

add_rules("mode.release")

set_languages("c++17")
add_includedirs(os.projectdir())

add_requires("protobuf-cpp")

target("disable_parallel_fail.proto", function()
    set_kind("object")
    add_rules("protobuf.cpp")
    add_files("proto/*.proto", {proto_public = true})
    add_packages("protobuf-cpp", {public = true})
end)

target("disable_parallel_fail.1", function()
    set_kind("object")
    add_files("src/1.cc")
    add_deps("disable_parallel_fail.proto")
    set_policy("build.across_targets_in_parallel", false)
end)

for i = 2, 25 do
    target("disable_parallel_fail." .. tostring(i), function()
        set_kind("object")
        add_files(path.join("src", tostring(i) .. ".cc"))
        -- add_deps("disable_parallel_fail." .. tostring(i-1))
        add_deps("disable_parallel_fail.1")
    end)
end

target("main", function()
    set_kind("binary")
    set_default(false)
    add_files("main.cc")
    for i = 1, 25 do
        add_deps("disable_parallel_fail." .. tostring(i))
    end
end)
