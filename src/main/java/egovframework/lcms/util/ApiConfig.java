package egovframework.lcms.util;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

/**
 * @since 2021.07.30
 * @author jaykim
 * @description properties에 있는 정보를 가져온다.
 */

@Service
public class ApiConfig {
	
	//서버 (dev or prod)
	@Value("${api.server.type}")
	private String API_SERVER_TYPE;
	
	@Value("${api.client.id}")
	private String API_CLIENT_ID;
	
	@Value("${api.client.pw}")
	private String API_CLIENT_PW;
	
	@Value("${api.server.dev}")
	private String API_SERVER_DEV;
	
	@Value("${api.server.prod}")
	private String API_SERVER_PROD;
	
	//설정에 따라 반환될 serverUrl
	private String API_SERVER_URL;
	
	@Value("${api.LC003.url}")
	private String API_LC003_URL ;
	@Value("${api.LC003.type}")
	private String API_LC003_TYPE;
	
	@Value("${api.LC004.url}")
	private String API_LC004_URL ;
	@Value("${api.LC004.type}")
	private String API_LC004_TYPE;
	
	@Value("${api.LC005.url}")
	private String API_LC005_URL ;
	@Value("${api.LC005.type}")
	private String API_LC005_TYPE;
	
	@Value("${api.LC006.url}")
	private String API_LC006_URL ;
	@Value("${api.LC006.type}")
	private String API_LC006_TYPE;
	
	@Value("${api.LC007.url}")
	private String API_LC007_URL ;
	@Value("${api.LC007.type}")
	private String API_LC007_TYPE;
	
	@Value("${api.LC008.url}")
	private String API_LC008_URL ;
	@Value("${api.LC008.type}")
	private String API_LC008_TYPE;
	
	@Value("${api.LC009.url}")
	private String API_LC009_URL ;
	@Value("${api.LC009.type}")
	private String API_LC009_TYPE;
	
	@Value("${api.LC010.url}")
	private String API_LC010_URL ;
	@Value("${api.LC010.type}")
	private String API_LC010_TYPE;
	
	@Value("${api.LC011.url}")
	private String API_LC011_URL ;
	@Value("${api.LC011.type}")
	private String API_LC011_TYPE;
	
	@Value("${api.LC012.url}")
	private String API_LC012_URL ;
	@Value("${api.LC012.type}")
	private String API_LC012_TYPE;
	
	@Value("${api.LC013.url}")
	private String API_LC013_URL ;
	@Value("${api.LC013.type}")
	private String API_LC013_TYPE;
	
	@Value("${api.LC014.url}")
	private String API_LC014_URL ;
	@Value("${api.LC014.type}")
	private String API_LC014_TYPE;
	
	@Value("${api.LC015.url}")
	private String API_LC015_URL ;
	@Value("${api.LC015.type}")
	private String API_LC015_TYPE;
	
	@Value("${api.LC016.url}")
	private String API_LC016_URL ;
	@Value("${api.LC016.type}")
	private String API_LC016_TYPE;
	
	@Value("${api.LC017.url}")
	private String API_LC017_URL ;
	@Value("${api.LC017.type}")
	private String API_LC017_TYPE;
	
	@Value("${api.LC018.url}")
	private String API_LC018_URL ;
	@Value("${api.LC018.type}")
	private String API_LC018_TYPE;
	
	@Value("${api.LC019.url}")
	private String API_LC019_URL ;
	@Value("${api.LC019.type}")
	private String API_LC019_TYPE;
	
	@Value("${api.LC020.url}")
	private String API_LC020_URL ;
	@Value("${api.LC020.type}")
	private String API_LC020_TYPE;
	
	@Value("${api.LC021.url}")
	private String API_LC021_URL ;
	@Value("${api.LC021.type}")
	private String API_LC021_TYPE;
	
	@Value("${api.LC022.url}")
	private String API_LC022_URL ;
	@Value("${api.LC022.type}")
	private String API_LC022_TYPE;
	
	@Value("${api.LC023.url}")
	private String API_LC023_URL ;
	@Value("${api.LC023.type}")
	private String API_LC023_TYPE;
	
	@Value("${api.LC024.url}")
	private String API_LC024_URL ;
	@Value("${api.LC024.type}")
	private String API_LC024_TYPE;
	
	@Value("${api.LC025.url}")
	private String API_LC025_URL ;
	@Value("${api.LC025.type}")
	private String API_LC025_TYPE;
	
	
	public String getAPI_SERVER_TYPE() {
		return API_SERVER_TYPE;
	}

	public String getAPI_SERVER_URL() {
		if(API_SERVER_TYPE.equals("DEV")) {
			API_SERVER_URL = API_SERVER_DEV;
		}else if(API_SERVER_TYPE.equals("PROD")) {
			API_SERVER_URL = API_SERVER_PROD;
		}else {
			API_SERVER_URL = "server address error. check api_info.properties";
		}
		return API_SERVER_URL;
	}
	
	public String getAPI_LC003_URL() {
		return API_LC003_URL;
	}
	public String getAPI_LC003_TYPE() {
		return API_LC003_TYPE;
	}
	public String getAPI_LC004_URL() {
		return API_LC004_URL;
	}
	public String getAPI_LC004_TYPE() {
		return API_LC004_TYPE;
	}
	public String getAPI_LC005_URL() {
		return API_LC005_URL;
	}
	public String getAPI_LC005_TYPE() {
		return API_LC005_TYPE;
	}
	public String getAPI_LC006_URL() {
		return API_LC006_URL;
	}
	public String getAPI_LC006_TYPE() {
		return API_LC006_TYPE;
	}
	public String getAPI_LC007_URL() {
		return API_LC007_URL;
	}
	public String getAPI_LC007_TYPE() {
		return API_LC007_TYPE;
	}
	public String getAPI_LC008_URL() {
		return API_LC008_URL;
	}
	public String getAPI_LC008_TYPE() {
		return API_LC008_TYPE;
	}
	public String getAPI_LC009_URL() {
		return API_LC009_URL;
	}
	public String getAPI_LC009_TYPE() {
		return API_LC009_TYPE;
	}
	public String getAPI_LC010_URL() {
		return API_LC010_URL;
	}
	public String getAPI_LC010_TYPE() {
		return API_LC010_TYPE;
	}
	public String getAPI_LC011_URL() {
		return API_LC011_URL;
	}
	public String getAPI_LC011_TYPE() {
		return API_LC011_TYPE;
	}
	public String getAPI_LC012_URL() {
		return API_LC012_URL;
	}
	public String getAPI_LC012_TYPE() {
		return API_LC012_TYPE;
	}
	public String getAPI_LC013_URL() {
		return API_LC013_URL;
	}
	public String getAPI_LC013_TYPE() {
		return API_LC013_TYPE;
	}
	public String getAPI_LC014_URL() {
		return API_LC014_URL;
	}
	public String getAPI_LC014_TYPE() {
		return API_LC014_TYPE;
	}
	public String getAPI_LC015_URL() {
		return API_LC015_URL;
	}
	public String getAPI_LC015_TYPE() {
		return API_LC015_TYPE;
	}
	public String getAPI_LC016_URL() {
		return API_LC016_URL;
	}
	public String getAPI_LC016_TYPE() {
		return API_LC016_TYPE;
	}
	public String getAPI_LC017_URL() {
		return API_LC017_URL;
	}
	public String getAPI_LC017_TYPE() {
		return API_LC017_TYPE;
	}
	public String getAPI_LC018_URL() {
		return API_LC018_URL;
	}
	public String getAPI_LC018_TYPE() {
		return API_LC018_TYPE;
	}
	public String getAPI_LC019_URL() {
		return API_LC019_URL;
	}
	public String getAPI_LC019_TYPE() {
		return API_LC019_TYPE;
	}
	public String getAPI_LC020_URL() {
		return API_LC020_URL;
	}
	public String getAPI_LC020_TYPE() {
		return API_LC020_TYPE;
	}
	public String getAPI_LC021_URL() {
		return API_LC021_URL;
	}
	public String getAPI_LC021_TYPE() {
		return API_LC021_TYPE;
	}
	public String getAPI_LC022_URL() {
		return API_LC022_URL;
	}
	public String getAPI_LC022_TYPE() {
		return API_LC022_TYPE;
	}
	public String getAPI_LC023_URL() {
		return API_LC023_URL;
	}
	public String getAPI_LC023_TYPE() {
		return API_LC023_TYPE;
	}
	public String getAPI_LC024_URL() {
		return API_LC024_URL;
	}
	public String getAPI_LC024_TYPE() {
		return API_LC024_TYPE;
	}
	public String getAPI_LC025_URL() {
		return API_LC025_URL;
	}
	public String getAPI_LC025_TYPE() {
		return API_LC025_TYPE;
	}

	public String getAPI_CLIENT_ID() {
		return API_CLIENT_ID;
	}

	public String getAPI_CLIENT_PW() {
		return API_CLIENT_PW;
	}

		
}
