// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('radar_info'));
var option = {
    title: {
        text: ''
    },
    tooltip: {},
    legend: {
        data: ['']
    },
    radar: {
        // shape: 'circle',
        name: {
            textStyle: {
                color: '#fff',
                backgroundColor: '#999',
                borderRadius: 3,
                padding: [3, 5]
           }
        },
        indicator: [
           { name: '生命值', max: 6500},
           { name: '魔法值', max: 16000},
           { name: '攻击力', max: 30000},
           { name: '攻击速度', max: 38000},
           { name: '攻击距离', max: 52000},
           { name: '护甲', max: 25000}
        ]
    },
    series: [{
        name: '英雄等级信息',
        type: 'radar',
        // areaStyle: {normal: {}},
        data : [
            {
                value : [4300, 10000, 28000, 35000, 50000, 19000],
                name : '信息'
            },
        ]
    }]
};
     // 使用刚指定的配置项和数据显示图表。
     myChart.setOption(option);