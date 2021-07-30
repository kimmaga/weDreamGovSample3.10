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
import org.apache.http.client.methods.HttpPost;
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
	
	@SuppressWarnings("rawtypes")
	public String getToken(WeakHashMap pMap) {
		
		logger.debug("http client [get token] start...");
		//토큰용 String
		String path = (String) pMap.get("PATH");
		
		String token = null;
		String token_path = path +"/oauth/2.0/token";
		
		//권한코드
		String authorize_code = getAuthorize_code();
		
		return null;
	}
	
	@SuppressWarnings("rawtypes")
	public String getAuthorize_code(WeakHashMap pMap) {
		
		logger.debug("http client [get Authorize_code] start...");
		
		String path = (String) pMap.get("PATH");
		
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
			}
		}catch(ClientProtocolException e) {
			
		}catch(IOException e) {
			
		}
		return null;
	}
	
	//GET
//	public Map get(String requestUrl, Map<String,Object>paramMap, String token) {
//		logger.debug("http client [get] start : {}", paramMap);
//		
//		//결과 전달용Map
//		HashMap<String, Object> resultMap = new HashMap<String, Object>();
//		
//		//HttpClient 생성
//		HttpClient client = HttpClientBuilder.create().build();
//		
//		//requestUrl에 GET방식으로 파라미터 셋팅
//		requestUrl += map2UrlString(paramMap);
//	}

	
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
	public JSONObject map2JSON(Map jsonMap) {
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
