package egovframework.lcms.util;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.HttpClientBuilder;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
public class HttpClientUtil {
	private static final Logger logger = LoggerFactory.getLogger(HttpClientUtil.class);
	
	
	//GET
	public Map get(String requestUrl, Map<String,Object> paramMap, String token) {
		logger.debug("http client [get] start : {}" , paramMap);
		
		//결과 전달용 Map
		WeakHashMap<String, Object> resultMap = new WeakHashMap<>();
		
		//HttpClient 생성
		HttpClient client = HttpClientBuilder.create().build();
		
		//requestUrl에  GET방식으로 파라미터 셋팅
		requestUrl += map2UrlString(paramMap);
		
		logger.debug("requestUrl : {}", requestUrl);
		
		//Get 메소드 Url 생성
		HttpGet getRequest = new HttpGet(requestUrl);
		
		//토큰 셋팅
		getRequest.addHeader("Authorization", token);
		
		try {
			//Response
			HttpResponse response = client.execute(getRequest);
			
			//Status Code 확인
			if( response.getStatusLine().getStatusCode() == 200 ) {
				//200 : 성공
				//responseHandler를 이용하여 body 가져오기
				ResponseHandler<String> handler = new BasicResponseHandler();
				
				String body = handler.handleResponse(response);
				
				logger.debug("response body : {}" , body);
				
				//결과 전달Map에 담아주기
				resultMap.put("response_code",response.getStatusLine().getStatusCode());
				resultMap.put("body",body);
			}else {
				// 그 외 : 에러
				logger.debug("response is error");
				logger.debug("check response error code : {}", response.getStatusLine().getStatusCode());
				
				resultMap.put("response_code" , response.getStatusLine().getStatusCode());
			}
		}catch(ClientProtocolException e) {
			logger.debug("Client Protocol Exception : {} ", e.getMessage());
		}catch(IOException e) {
			logger.debug("IO Exception : {} ", e.getMessage());
		}
		
		return resultMap;
	}
	
	//POST
	public Map post(String requestUrl, WeakHashMap<String,Object> paramMap, String token) {
		logger.debug("http client [post] start : {}" , paramMap);
		
		//결과 전달용 Map
		WeakHashMap<String,Object> resultMap = new WeakHashMap<>();
		
		//HttpClient 생성
		HttpClient client = HttpClientBuilder.create().build();
		
		//Get 메소드 Url 생성
		HttpPost postRequest = new HttpPost(requestUrl);
		
		//header
		postRequest.setHeader("Accept"			,"application/json");
		postRequest.setHeader("Connection"		,"keep-alive");
		postRequest.setHeader("Content-Type"	,"application/json");
		
		//토큰 셋팅
		postRequest.addHeader("Authorization"   , token);
		
		try {
			//paramMap -> json -> str 변경 후 entity화
			String param_str = map2JSON(paramMap).toString();
			StringEntity str_entity;
			str_entity = new StringEntity(param_str,"UTF-8");
			
			//파라미터 세팅
			postRequest.setEntity(str_entity);
			
			//Response
			HttpResponse response = client.execute(postRequest);
			
			//Status Code 확인
			if( response.getStatusLine().getStatusCode() == 200 ) {
				// 200 : 성공
				// ResponseHandler를 이용하여 body 가져오기
				ResponseHandler<String> handler = new BasicResponseHandler();
				String body = handler.handleResponse(response);
				
				logger.debug("response body : {}", body);
				
				//결과 전달 Map에 담아주기
				resultMap.put("response_code",response.getStatusLine().getStatusCode());
				resultMap.put("body",body);
			}else {
				//그 외 : 에러
				logger.debug("response is error...");
				logger.debug("check response error code : {}", response.getStatusLine().getStatusCode());
				
				resultMap.put("response_code",response.getStatusLine().getStatusCode());
			}
			
		}catch(ClientProtocolException e) {
			logger.debug("Client Protocol Exception : {} " , e.getMessage());
		}catch(IOException e){
			logger.debug("IO Exception : {} " , e.getMessage());
		}
		
		return resultMap;
	}
	
//	public Map put(String requestUrl, WeakHashMap<String,Object> paramMap, String token) {
//		logger.debug("http client [put] start: {} ",paramMap);
//		
//		//결과 전달용 Map
//		WeakHashMap<String,Object> resultMap = new WeakHashMap<>();
//		
//		//httpClient 생성
//		HttpClient client = HttpClientBuilder.create().build();
//		
//		//Get 메소드 Url 생성
//		HttpPut putRequest = new HttpPut(requestUrl);
//		
//		//header
//		putRequest.setHeader("Accept"     		,"application/json");
//		putRequest.setHeader("Connection"   	,"keep-alive");
//		putRequest.setHeader("Content-Type"     ,"application/json");
//		
//		//토큰 셋팅
//		putRequest.addHeader("Authorization", token);
//		
//		try {
//			//paramMap --> json --> str 변경 후 entity화
//			String param_str = map2JSON(paramMap).toString();
//			StringEntity str_entity;
//			str_entity = new StringEntity(param_str,"UTF-8");
//			
//			//파라미터 세팅
//			putRequest.setEntity(str_entity);
//			
//			//Response
//			HttpResponse response = client.execute(putRequest);
//			
//			//Status Code 확인
//			if( response.getStatusLine().getStatusCode() == 200 ) {
//				// 200 : 성공
//				//ResponseHandler를 이용하여 body 가져오기
//				ResponseHandler<String> handler = new BasicResponseHandler();
//				
//				String body = handler.handleResponse(response);
//				
//				logger.debug("response body : {}", body);
//				
//				//결과 전달 Map에 담아주기
//				
//			}
//			
//		}catch(Exception e) {
//			
//		}
//	}
	
	@SuppressWarnings("rawtypes")
	public String getToken(WeakHashMap pMap) {
		
		logger.debug("http client [get token] start...");
		
		//토큰용 String
		String token = null;
		
		String path = (String) pMap.get("PATH");
		String client_id = (String)pMap.get("API_CLIENT_ID");
		String client_pw = (String)pMap.get("API_CLIENT_PW");
		String token_path = path +"/oauth/2.0/token";
		
		//권한코드
		String authorize_code = getAuthorize_code(pMap);
		
		//HttpClient 생성
		HttpClient client = HttpClientBuilder.create().build();
		
		//Get 메소드 Url 생성
		HttpPost postRequest = new HttpPost(token_path);
		
		//header 세팅
		postRequest.setHeader("Accept"		 	 , "application/json");
		postRequest.setHeader("Connection"   	 , "keep-alive");
		postRequest.setHeader("Content-Type" 	 , "application/json");
		//요청자 아이디
		postRequest.setHeader("X-Kfb-Client-Id"   , client_id);
		//요청자 비밀번호
		postRequest.setHeader("X-Kfb-User-Secret" , client_pw);
		//권한코드
		postRequest.setHeader("Authorize_code"    , authorize_code);
		try {
			//Response
			HttpResponse response = client.execute(postRequest);
			
			//Status Code 확인
			if( response.getStatusLine().getStatusCode() == 200 ) {
				//200 : 성공
				//ResponseHandler를 이용하여 body가져오기
				ResponseHandler<String> handler = new BasicResponseHandler();
				
				String body = handler.handleResponse(response);
				
				logger.debug("response body : {}", body);
				
				JSONObject body_json = str2JSON(body);
				
				//응답코드, 응답메시지, 토큰확인
				token = String.valueOf(body_json.get("authorization"));
			}else {
				// 그 외 : 에러
				 logger.debug("response is error..");
				 logger.debug("check response error code : {}",response.getStatusLine().getStatusCode());
			}
		}catch(ClientProtocolException e) {
			logger.debug("Client Protocol Exception : {}", e.getMessage());
		}catch(IOException e) {
			logger.debug("IO Exception : {}",e.getMessage());
		}
		
		return "Bearer " + token;
	}
	
	@SuppressWarnings("rawtypes")
	public String getAuthorize_code(WeakHashMap pMap) {
		
		logger.debug("http client [get Authorize_code] start...");
		
		String path 	 = (String)pMap.get("PATH");
		
		String client_id = (String)pMap.get("API_CLIENT_ID");
		String client_pw = (String)pMap.get("API_CLIENT_PW");

		String authorize_path = path +"/oauth/2.0/authorize";
		
		String authorize_code = null;
		
		//HttpClient 생성
		HttpClient client = HttpClientBuilder.create().build();
		
		//Get 메소드Url 생성
		HttpPost postRequest = new HttpPost(authorize_path);
		
		//header
		postRequest.setHeader("Accept"              , "application/json");
		postRequest.setHeader("Connection"          , "keep-alive"      );
		postRequest.setHeader("Content-Type"        , "application/json");
		postRequest.setHeader("X-Kfb-Client-Id"     , client_id);
		postRequest.setHeader("X-Kfb-User-Secret"   , client_pw);
		
		try {
			//Response
			HttpResponse response = client.execute(postRequest);
			
			//Status Code 확인
			if( response.getStatusLine().getStatusCode() == 200) {
				//ResponseHandler를 이용하여 body가져오기
				ResponseHandler<String> handler = new BasicResponseHandler();
				
				String body = handler.handleResponse(response);
				
				logger.debug("response body : {}", body);
				
				JSONObject body_json = str2JSON(body);
				
				//응답코드, 응답메시지, 토큰확인
				authorize_code = String.valueOf(body_json.get("authorize_code"));
				logger.info("authorize_code = " + authorize_code);
			} else {
				//그외 : 에러
				logger.debug("response is error...");
				logger.debug("check response error code : {}" , response.getStatusLine().getStatusCode());
			}
		}catch(ClientProtocolException e) {
			logger.debug("Client Protocol Exception : {}", e.getMessage());
		}catch(IOException e) {
			logger.debug("IO Exception : {}", e.getMessage());
		}
		return authorize_code;
	}
	
	
	//String to JSON
	public JSONObject str2JSON(String jsonStr) {
		JSONObject jsonObj = null;
		if( jsonStr != null) {
			//JSON parser
			JSONParser parser = new JSONParser();
			try {
				//변환
				Object object = parser.parse(jsonStr);
				jsonObj = (JSONObject) object;
			}catch (org.json.simple.parser.ParseException e) {
				logger.debug("Parse Exception : {}", e.getMessage());
			}
		}
		return jsonObj;
	}
	
	
	//Map to JSON
	@SuppressWarnings("rawtypes")
	public JSONObject map2JSON(WeakHashMap jsonMap) {
		JSONObject jsonObj = null;
		if( jsonMap != null ) {
			//변환
			jsonObj = new JSONObject(jsonMap);

		}
		return jsonObj;
	}
	
	//JSON to Map
	@SuppressWarnings("rawtypes")
	public HashMap<String, Object> json2Map(JSONObject jsonObject){
		
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		
		//Json 키 Set
		Set jsonSet = jsonObject.entrySet();
		
		//Iterator
		@SuppressWarnings("unchecked")
		Iterator<String> iter = jsonSet.iterator();
		
		while ( iter.hasNext() ) {
			//Key
			String key = iter.next();
			//Object
			Object obj = jsonObject.get(key);
			
			//Map에 Put
			resultMap.put(key, obj);
		}
		
		return resultMap;
	}
	
	
	//Map to String
	@SuppressWarnings("rawtypes")
	public String map2UrlString(Map map) {
		StringBuilder sb = new StringBuilder();
		
		//keySet
		Set keySet = map.keySet();
		//iterator
		Iterator iter = keySet.iterator();
		
		//카운트용
		int cnt = 0;
		
		//반복 돌며 string builder에 셋팅
		while( iter.hasNext() ) {
			Object key = iter.next();		//키
			Object val = map.get(key);		//값
			
			if( cnt == 0 ) {
				//get방식 파라미터 첫번째는 ?
				sb.append("?");
			}else {
				//get방식 파라미터 두번째부터는 &
				sb.append("&");
			}
			
			sb.append(key + "=" + val);
			cnt++;
		}
		return sb.toString();
	}
}
