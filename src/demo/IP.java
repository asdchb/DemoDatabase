package demo;

/**
 * Created at 221
 * 16-7-18 上午10:14.
 */
public class IP {
    private String min;
    private String max;
    private String loction;

    public IP(String min, String max, String loction) {
        this.min = min;
        this.max = max;
        this.loction = loction;
    }

    public String getMin() {
        return min;
    }

    public String getMax() {
        return max;
    }

    public String getLoction() {
        return loction;
    }
}
