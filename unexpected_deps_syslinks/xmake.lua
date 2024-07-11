add_requires("gtest 1.13.0", {configs = {main = true}})

target("foo", function()
    set_kind("object")
    add_rules("c++")
    add_packages("gtest", {public = true})
    add_syslinks("ceres", "pcl_common", "pcl_filters", "pcl_segmentation")
end)

target("localization-package", function()
    set_kind("phony")
    add_deps("foo")

    on_config(function(target)
        print("1111")
        print(target:get_from("syslinks", "dep::foo"))

        print("2222")
        print(target:dep("foo"):get("syslinks"))
    end)
end)
