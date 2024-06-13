add_rules("plugin.compile_commands.autoupdate", {outputdir = "."})

add_rules("mode.release")

set_languages("c++17")
add_includedirs(os.projectdir())

add_requires("gtest 1.13.0", {configs = {main = true}})

rule("prepare_test_data", function()
    local prepare_test_data_impl = function(target)
        if not _g.first then
            _g.first = true
            print(target:name())
            io.writefile("test_data.txt", target:name())
            os.cp("test_data.txt", target:rundir(), {rootdir = "."})
        end
    end

    before_run(prepare_test_data_impl)
    before_test(prepare_test_data_impl)
end)

for i = 1, 10 do
    target("sync_once_function." .. tostring(i), function()
        set_kind("binary")
        add_files(path.join("src", tostring(i) .. ".cc"))
        add_files("src/unit_test.cc")
        add_tests("default")
        add_packages("gtest")
        add_rules("prepare_test_data")
    end)
end
