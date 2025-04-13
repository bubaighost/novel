const menu = {
    list() {
        return [
            {
                "backMenu": [
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-full",
                                "buttons": [
                                    "新增",
                                    "查看",
                                    "修改",
                                    "删除"
                                ],
                                "menu": "会员列表",
                                "menuJump": "列表",
                                "tableName": "huiyuan"
                            }
                        ],
                        "menu": "会员管理"
                    },
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-flashlightopen",
                                "buttons": [
                                    "新增",
                                    "查看",
                                    "修改",
                                    "删除"
                                ],
                                "menu": "分类列表",
                                "menuJump": "列表",
                                "tableName": "xiaoshuofenlei"
                            }
                        ],
                        "menu": "分类管理"
                    },
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-list",
                                "buttons": [
                                    "新增",
                                    "查看",
                                    "修改",
                                    "删除",
                                    "查看评论"
                                ],
                                "menu": "小说列表",
                                "menuJump": "列表",
                                "tableName": "xiaoshuoxinxi"
                            }
                        ],
                        "menu": "小说管理"
                    },
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-similar",
                                "buttons": [
                                    "查看",
                                    "修改",
                                    "删除"
                                ],
                                "menu": "评分列表",
                                "menuJump": "列表",
                                "tableName": "xiaoshuopingfen"
                            }
                        ],
                        "menu": "评分管理"
                    },
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-group",
                                "buttons": [
                                    "查看",
                                    "修改",
                                    "删除"
                                ],
                                "menu": "交流论坛",
                                "tableName": "forum"
                            }
                        ],
                        "menu": "交流论坛"
                    },
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-group",
                                "buttons": [
                                    "查看",
                                ],
                                "menu": "数据统计",
                                "tableName": "statistics"
                            }
                        ],
                        "menu": "数据统计"
                    },
                    {
                        "child": [
                            {
                                "appFrontIcon": "cuIcon-news",
                                "buttons": [
                                    "新增",
                                    "查看",
                                    "修改",
                                    "删除"
                                ],
                                "menu": "公告资讯",
                                "tableName": "news"
                            },
                            {
                                "appFrontIcon": "cuIcon-paint",
                                "buttons": [
                                    "查看",
                                    "修改",
                                    "删除"
                                ],
                                "menu": "轮播图管理",
                                "tableName": "config"
                            }
                        ],
                        "menu": "系统管理"
                    }
                ],
                "hasBackLogin": "是",
                "hasBackRegister": "否",
                "hasFrontLogin": "否",
                "hasFrontRegister": "否",
                "roleName": "管理员",
                "tableName": "users"
            }
        ]
    }
}
export default menu;
