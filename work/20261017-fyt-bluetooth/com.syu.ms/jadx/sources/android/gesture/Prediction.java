package android.gesture;

/* JADX INFO: loaded from: classes.dex */
public class Prediction {
    public final String name;
    public double score;

    public Prediction(String str, double d2) {
        this.name = str;
        this.score = d2;
    }

    public String toString() {
        return this.name;
    }
}
