# coursework_2
ICP开发入门课程第二课课程作业  

用motoko实现一个快排函数  

    quicksort : [var Int] -> ()

要求：  

1、用moc调试运行  

    1）封装 module Qs.mo。实现 quicksort : [var Int] -> () 公共方法。

    2）在test.mo中加入测试用例，调用Qs封装，在Moc下测试运行。

    3）执行 moc --package base $(dfx cache show)/base -r src/coursework_2_backend/test.mo
    
    Debug输出测试结果

2、把函数封装在一个canister里面  

    1) 在main.mo中实现一个actor，公共接口是public func qsort(arr: [Int]): async [Int]。
    
    调用Qs快排封装，部署在本地和主网下测试运行。

    2) 本地CLI测试dfx canister call coursework_2_backend qsort '(vec {-35; -32; 95; -95; 1; -95; 28; -90; 79; -19})'

    3) 本地Candid UI测试 http://127.0.0.1:8000/?canisterId=ryjl3-tyaaa-aaaaa-aaaba-cai&id=rrkah-fqaaa-aaaaa-aaaaq-cai

3、部署到主网
    
    1）dfx deploy --network ic --with-cycles 1000000000000

    2) coursework_2_backend: https://a4gq6-oaaaa-aaaab-qaa4q-cai.raw.ic0.app/?id=jyiiv-giaaa-aaaam-aaqua-cai

    2）本次部署删除了前端工程，只部署了后端工程

4、使用主网的Candid UI 调试运行 

    coursework_2_backend: https://a4gq6-oaaaa-aaaab-qaa4q-cai.raw.ic0.app/?id=jyiiv-giaaa-aaaam-aaqua-cai



