package android.animation;

/* JADX INFO: loaded from: classes.dex */
public class IntEvaluator implements TypeEvaluator<Integer> {
    @Override // android.animation.TypeEvaluator
    public Integer evaluate(float f2, Integer num, Integer num2) {
        int iIntValue = num.intValue();
        return Integer.valueOf((int) (iIntValue + (f2 * (num2.intValue() - iIntValue))));
    }
}
