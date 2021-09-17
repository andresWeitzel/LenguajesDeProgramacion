
package mypackage.collections;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;


public class Week {
    
    public static void main(String[] args) {
        
        Map<String,String> weekMap=
                Collections.synchronizedMap(new HashMap<String, String>());
        
        weekMap.put("lu", "Lunes");
        weekMap.put("sab", "Sabado");
        
        System.out.println(weekMap.get("lu"));
        
        weekMap.forEach((k,v)->System.out.println(k+" "+v));
    }
}
