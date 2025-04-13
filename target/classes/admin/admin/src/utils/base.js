const base = {
    get() {
        return {
            url : "http://localhost:8080/novel/",
            name: "novel",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/novel/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "网络小说评分交流管理系统"
        } 
    }
}
export default base
