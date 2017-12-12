/**
 * 全局变量
 */
var _questionnaireInfo = {
    id: (new Date()).getTime(),
    title: '点击此处编辑问卷标题',
    description: '点击此处编辑问卷描述',
    userdefine: { // true编号自定义，false编号系统定义
        questionid: false,
        itemid: false,
        rowid: false,
        colid: false
    },
    caitype: "cati", // 调查所属类型
    language: ["zh"], // 问卷支持的语言
    epidataurl: "", // 获取epidata解析后的字符串的路径
    resuploadurl: "", //资源文件的上传路径
    resremoveurl: "", // 删除资源文件的路径
    surveyId: ""
};
var _questionMap = new Array();// 存放问题
var _variableMap = new Array();// 存放变量
var _pageMap = new Array(); // 存放问卷分页
var _samplePropertyMap = new Array(); // 样本属性标号与名称
var _surveyVariableMap = new Array(); // 项目变量的名称、描述、类型与初始值、当前值
var _parentObj;// 父窗口传入的对象，包含一个字符串和一个函数引用

/**
 * 全局常量
 */
// 问题类型
var QUESTIONTYPE = {
    INFO: {
        name: 'label',
        desc: '提示题'
    },
    SINGLE: {
        name: 'singleselect',
        desc: '单选题'
    },
    DROPDOWN: {
        name: 'dropdown',
        desc: '弹出选择题'
    },
    MULTIPLE: {
        name: "multiselect",
        desc: '多选题'
    },

    TEXT: {
        name: "text",
        desc: '单行文本开放题'
    },
    TEXTAREA: {
        name: "textarea",
        desc: '多行文本开放题'
    },
    INTEGER: {
        name: "integer",
        desc: '整数开放题'
    },
    FLOAT: {
        name: "float",
        desc: '浮点数开放题'
    },
    DATETIME: {
        name: "datetime",
        desc: '日期开放题'
    },

    ASSIGNMENT: {
        name: "assignment",
        desc: '赋值题'
    },
    SORT: {
        name: "sort",
        desc: '排序题'
    },
    SCALE: {
        name: "scale",
        desc: '打分题'
    },
    MATRIX: {
        name: "matrix",
        desc: '表格题'
    },
    MATRIXSINGLE: {
        name: "matrixsingle",
        desc: '表格单选题'
    },
    MATRIXMULTIPLE: {
        name: "matrixmultiple",
        desc: '表格多选题'
    },
    PHOTO: {
        name: "photo",
        desc: '拍照题'
    },
    LOCATION: {
        name: "location",
        desc: '定位题'
    },
    PROVCITY: {
        name: "provCity",
        desc: '行政区划题'
    },
    SEARCH: {
        name: "search",
        desc: '搜索题'
    }
};
var INFO = "label";// 提示题

var SELECT = "select";// 选择题
var SINGLE = "singleselect";// 单选题
var DROPDOWN = 'dropdown'; // 弹出选择题
var MULTIPLE = "multiselect";// 多选题

var INPUT = "input";// 文本开放题
var TEXT = "text";// 单行文本开放题
var TEXTAREA = "textarea";// 多行文本开放题
var INTEGER = "integer";// 整数开放题
var FLOAT = "float";// 浮点数开放题
var DATETIME = "datetime";// 日期开放题

var ASSIGNMENT = "assignment";// 赋值题
var SORT = "sort";// 排序题
var SCALE = "scale";// 打分题
var MATRIX = "matrix";// 表格题
var MATRIXSINGLE = "matrixsingle"; // 表格单选题
var MATRIXMULTIPLE = "matrixmultiple"; // 表格多选题
var COMPOSITE = "composite";// 组合题
var PHOTO = "photo"; // 拍照题
var LOCATION = "location"; // 定位题
var PROVCITY = "provCity"; // 行政区划题
var SEARCH = "search"; // 搜索题

// 问卷设计支持的显示语言
var LANGUAGE = {
    "zh": "中文",
    "en": "英文",
    "ja": "日语",
    "ko": "韩语",
    "fr": "法语",
    "de": "德语",
    "ru": "俄语",
    "it": "意大利语",
    "sp": "西班牙语"
};

// 上传资源文件时支持的文件类型
var _supportImageType = ['jpg','jpeg','png'];
var _supportAudioType = ['mp3'];
var _supportVideoType = ['mp4'];


