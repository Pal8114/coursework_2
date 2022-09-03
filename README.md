# coursework_2
ICP开发入门课程第二课课程作业  

用motoko实现一个快排函数  

    quicksort : [var Int] -> ()

要求：  

1、用moc调试运行  

    moc --package base $(dfx cache show)/base -r src/coursework_2_backend/main.mo

    封装 module Qs.mo

    main.mo 中加入 quicksort : [var Int] -> () 方法，调用Qs快排封装，在Moc下测试运行。

2、把函数封装在一个canister里面  

    main.mo 在canister中封装 public func qsort(arr: [Int]): async [Int]方法，调用Qs快排封装，部署在本地和主网下测试运行。

3、部署到主网
    
    

4、使用主网的Candid UI 调试运行 



