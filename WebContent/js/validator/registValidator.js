$(document).ready(function() {/* 文档加载，执行一个函数*/
    $('#regist').bootstrapValidator({
	feedbackIcons: {/*input状态样式图片*/
	    valid: 'glyphicon glyphicon-ok',
	    invalid: 'glyphicon glyphicon-remove',
	    validating: 'glyphicon glyphicon-refresh'
	},
	fields: {/*验证：规则*/
	    loginuser: {//验证input项：验证规则
		message: '非法用户名',
		validators: {
		    notEmpty: {//非空验证：提示消息
			message: '用户名不能为空'
		    },
		    stringLength: {
			min: 4,
			max: 15,
			message: '用户名长度必须在4到15之间'
		    },
		    regexp: {
			regexp: /^[a-zA-Z0-9_\.]+$/,
			message: '用户名由数字字母下划线和.组成'
		    }
		}
	    },
	    password: {
		message:'密码无效',
		validators: {
		    notEmpty: {
			message: '密码不能为空'
		    },
		    stringLength: {
			min: 6,
			max: 30,
			message: '密码长度必须在6到30之间'
		    },
		    identical: {//相同
			field: 'password', //需要进行比较的input name值
			message: '两次密码不一致'
		    },
		    regexp: {
			regexp: /^[a-zA-Z0-9_\.]+$/,
			message: '只能由字母，数字，下划线组成'
		    }
		}
	    },
	    passwordrepeat: {
		message: '密码无效',
		validators: {
		    notEmpty: {
			message: '用户名不能为空'
		    },
		    stringLength: {
			min: 6,
			max: 30,
			message: '密码长度必须在6到30之间'
		    },
		    identical: {//相同
			field: 'password',
			message: '两次密码不一致'
		    },
		    regexp: {//匹配规则
			regexp: /^[a-zA-Z0-9_\.]+$/,
			message: '只能由字母，数字，下划线组成'
		    }
		}
	    },
	}
    });
});