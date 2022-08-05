public class SetDemo {
    public static set<string> capitalizeSet(set<string> setString) {
        Set<string> capsSet = new Set<string>();
        for (string eachStr : setString) {
            string tempStr = eachStr.capitalize();
            capsSet.add(tempStr);
        }
        return capsSet;
    }
}
