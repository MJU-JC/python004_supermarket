const base = {
    get() {
        return {
            url : "http://localhost:8080/djangodh92s/",
            name: "djangodh92s",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "超市购物系统"
        } 
    }
}
export default base
