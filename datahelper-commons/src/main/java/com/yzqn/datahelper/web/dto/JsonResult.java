package com.yzqn.datahelper.web.dto;
import java.util.Map;

public class JsonResult<T> {
	private int resultCode;//0:成功，1:失败
	private String message;//消息提示
	private Boolean success;
	private T data;
	private Map<String, Object> extras;
	public JsonResult(){
		super();
	}

	public JsonResult(int resultCode) {
		super();
		this.resultCode = resultCode;
	}
	public JsonResult(int resultCode, String message, T data, Map<String, Object> extras) {
		super();
		this.resultCode = resultCode;
		this.message = message;
		this.data = data;
		this.extras = extras;
	}
	public JsonResult(int resultCode, String message, T data) {
		super();
		this.resultCode = resultCode;
		this.message = message;
		this.data = data;
	}
	public JsonResult(int resultCode, String message) {
		super();
		this.resultCode = resultCode;
		this.message = message;
	}
	public JsonResult(int resultCode, T data) {
		super();
		this.resultCode = resultCode;
		this.data = data;
	}
	public int getResultCode() {
		return resultCode;
	}
	public void setResultCode(int resultCode) {
		this.resultCode = resultCode;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}

	public Map<String, Object> getExtras() {
		return extras;
	}
	public void setExtras(Map<String, Object> extras) {
		this.extras = extras;
	}
	@Override
	public String toString() {
		return "JsonResult [resultCode=" + resultCode + ", message=" + message + ", data=" + data + ", extras=" + extras
				+ "]";
	}

}