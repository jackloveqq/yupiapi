-- 接口信息
use yuapi;
create table if not exists yuapi.`interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `name` varchar(256) not null comment '名称',
    `description` varchar(256) null comment '描述',
    `url` varchar(512) not null comment '接口地址',
    'requestParams' text not null comment '请求参数',
    `requestHeader` text null comment '请求头',
    `responseHeader` varchar(256) null comment '响应头',
    `status` int default 0 not null comment '接口状态',
    `method` varchar(256) not null comment '请求类型',
    `userId` bigint not null comment '创建人',
    `isDeleted` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间'
) comment '接口信息'default charset=utf8;

insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('qwe', 'qwe', 'www.lakia-pollich.info', 'qwe', 'qwe', 0, 'qwe', 6439664543);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('史博涛', '姜鹭洋', 'www.teddy-marvin.co', '邵弘文', '范子骞', 0, '郑煜祺', 2);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('苏哲瀚', '朱瑞霖', 'www.edwin-rowe.net', '周瑞霖', '顾志强', 0, '何文博', 475909429);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('萧泽洋', '张浩然', 'www.earlean-johnson.org', '顾琪', '田伟宸', 0, '何旭尧', 5798);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('郑志强', '袁鹤轩', 'www.johnette-leffler.com', '蒋鸿煊', '叶致远', 0, '龙苑博', 3);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('张擎苍', '谭雨泽', 'www.lashandra-cruickshank.info', '武明轩', '江晟睿', 0, '赵鑫磊', 496721);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('余明辉', '唐昊然', 'www.hubert-koelpin.net', '史致远', '何明辉', 0, '黎明轩', 4);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('戴天磊', '孙健雄', 'www.shon-schneider.biz', '曾雪松', '徐志强', 0, '吴锦程', 1087882984);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('龚楷瑞', '梁熠彤', 'www.dion-lebsack.com', '侯智宸', '高智宸', 0, '钟晋鹏', 601867006);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('覃耀杰', '谢立轩', 'www.maryanne-okon.org', '胡明', '夏鹭洋', 0, '罗楷瑞', 47171);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('姜皓轩', '许弘文', 'www.cory-koepp.io', '董君浩', '余思聪', 0, '范志强', 5744406);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('陆驰', '姚浩宇', 'www.kent-upton.biz', '孔思', '洪耀杰', 0, '姜文昊', 2654113);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('史烨伟', '白驰', 'www.scot-hauck.io', '秦正豪', '薛梓晨', 0, '谢梓晨', 57739);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('陈鹏飞', '石远航', 'www.melita-abshire.info', '韩修杰', '徐嘉熙', 0, '戴子骞', 7);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('廖文博', '韦子涵', 'www.jacques-kris.com', '韩鸿煊', '蔡靖琪', 0, '张天磊', 485017);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('韦炫明', '姜博涛', 'www.krysten-kemmer.biz', '赖哲瀚', '邱博涛', 0, '戴鸿煊', 922);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('赖笑愚', '韩鹤轩', 'www.julian-friesen.info', '周梓晨', '韦烨伟', 0, '贾文', 81);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('余弘文', '夏子涵', 'www.marketta-macejkovic.co', '邵煜城', '彭志泽', 0, '杜楷瑞', 851);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('史荣轩', '段鹏', 'www.otto-monahan.biz', '田煜城', '严弘文', 0, '袁绍齐', 298);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('姜煜祺', '陶鸿涛', 'www.gail-smitham.com', '卢鹏飞', '史博文', 0, '赵子涵', 519);

create table if not exists yuapi.`user_interface_info`
(
    `id` bigint  not null  auto_increment  comment '主键' primary key,
    `userId` bigint not null comment '调用用户',
    `interfaceInfoId` bigint                             not null comment '接口id',
    `totalNum`        int      default 0                 not null comment '总调用次数',
    `leftNum`         int      default 0                 not null comment '剩余调用次数',
    `status`          int      default 0                 not null comment '0-正常，1-禁用',
    `isDeleted` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间'
)comment '用户接口关系'default charset=utf8;