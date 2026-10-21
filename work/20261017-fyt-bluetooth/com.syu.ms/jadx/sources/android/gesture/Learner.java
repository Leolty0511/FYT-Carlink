package android.gesture;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
abstract class Learner {
    private final ArrayList<Instance> mInstances = new ArrayList<>();

    public void addInstance(Instance instance) {
        this.mInstances.add(instance);
    }

    public abstract ArrayList<Prediction> classify(int i2, int i3, float[] fArr);

    public ArrayList<Instance> getInstances() {
        return this.mInstances;
    }

    public void removeInstance(long j2) {
        ArrayList<Instance> arrayList = this.mInstances;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Instance instance = arrayList.get(i2);
            if (j2 == instance.id) {
                arrayList.remove(instance);
                return;
            }
        }
    }

    public void removeInstances(String str) {
        ArrayList arrayList = new ArrayList();
        ArrayList<Instance> arrayList2 = this.mInstances;
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            Instance instance = arrayList2.get(i2);
            String str2 = instance.label;
            if ((str2 == null && str == null) || (str2 != null && str2.equals(str))) {
                arrayList.add(instance);
            }
        }
        arrayList2.removeAll(arrayList);
    }
}
