// JavaScript Document
/*
 * 常用JavaScript小工具
 */

+function () {
	// StringUtils
	StringUtils = {
		/*
		 * <p>Checks if a String is whitespace, empty ("") or null.</p>
		 *
		 * <pre>
		 * StringUtils.isBlank("null", ["null"]) = true
		 * StringUtils.isBlank(null)             = true
		 * StringUtils.isBlank("")               = true
		 * StringUtils.isBlank(" ")              = true
		 * StringUtils.isBlank("bob")            = false
		 * StringUtils.isBlank("  bob  ")        = false
		 * </pre>
		 *
		 * @param str  the String to check, may be null
		 * @return <code>true</code> if the String is null, empty or whitespace
		 * @since 2.0
		 */
		isBlank: function(str, exceptionArr) {
			if(str === null || str === undefined) {
				return true;	
			}
			
			if(typeof str !== 'string') {
				return false;
			}
			str = str.replace(/(^\s*)|(\s*$)/g, '');
			if (str.length === 0) {
				return true;
			}
			
			if(Object.prototype.toString.call(exceptionArr) === '[object Array]') {
				for(var i = 0, length = exceptionArr.length; i < length; i++) {
					if(str === exceptionArr[i]) {
						return true;	
					}
				}
			}
			return false;
		},
		/*
		 * <p>Checks if a String is not empty (""), not null and not whitespace only.</p>
		 *
		 * <pre>
		 * StringUtils.isNotBlank("null", ["null"]) = false
		 * StringUtils.isNotBlank(null)          = false
		 * StringUtils.isNotBlank("")            = false
		 * StringUtils.isNotBlank(" ")           = false
		 * StringUtils.isNotBlank("bob")         = true
		 * StringUtils.isNotBlank("  bob  ")     = true
		 * </pre>
		 *
		 * @param str  the String to check, may be null
		 * @return <code>true</code> if the String is
		 *  not empty and not null and not whitespace
		 * @since 2.0
		 */
		isNotBlank: function(str, exceptionArr) {
			return !StringUtils.isBlank(str, exceptionArr);
		},
		/*
		 *StringUtils.trim(' test ')             = 'test'
		 *
		 *
		 *
		 */
		trim: function(str) {
			if(typeof str != 'string') {
				return str;
			}
			return str.replace(/^\s*|\s*$/g, '');
		}
	};
	
	// BrowerUtils
	BrowserUtils = {
		checkBelowIE8: function() {
			var name = navigator.appName;
			var versionStr = navigator.appVersion;
			var version = parseFloat(versionStr);
			
			if(version < 5 && name === 'Microsoft Internet Explorer') {
				var ieVersion = versionStr.substr(versionStr.indexOf('MSIE')+5, 1);
				if(ieVersion < 9) {
					return true;	
				} else {
					return false;
				}
			} else {
				return false;	
			}
		},
		getParamsFromURL: function(url) {
			var queryString = url.substr(url.indexOf('?') + 1);
			var keyValues = queryString.split('&');
			
			var parameters = {};
			for(var i = 0, length = keyValues.length; i < length; i++) {
				var key = keyValues[i].substring(0, keyValues[i].indexOf('='));
				var value = keyValues[i].substr(keyValues[i].indexOf('=') + 1);
				parameters[key] = value;
			}
			return parameters;
		}
	};
	
	FileUtils = {
		checkFileType: function(file, targetType) {
			var fileName = file.name;
			console.log(fileName);
			var resourceType = fileName.substr(fileName.lastIndexOf('.') + 1);
			if(resourceType === targetType) {
				return true;
			} else{
				return false;
			}
		},
		checkFileSize: function(file, limit) {
			var fileSize = file.size;
			if(fileSize <= limit) {
				return true;
			} else {
				return false;
			}
		}
	};
}();