package cn.jeep.Util;

import java.util.UUID;

public class randomId {
	public static String getUid(){
		int machineId = 1;   //最大支持1-9个集群机器部署
        int hashCodeV = UUID.randomUUID().toString().hashCode();
        if (hashCodeV < 0) {//有可能是负数
            hashCodeV = -hashCodeV;
        }
        /*
         * UUID.randomUUID().toString() 
         * */
        return machineId + String.format("%011d", hashCodeV);
	}
}
