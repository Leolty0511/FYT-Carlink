package android.gesture;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
class InstanceLearner extends Learner {
    private static final Comparator<Prediction> sComparator = new Comparator<Prediction>() { // from class: android.gesture.InstanceLearner.1
        @Override // java.util.Comparator
        public int compare(Prediction prediction, Prediction prediction2) {
            double d2 = prediction.score;
            double d3 = prediction2.score;
            if (d2 > d3) {
                return -1;
            }
            return d2 < d3 ? 1 : 0;
        }
    };

    @Override // android.gesture.Learner
    public ArrayList<Prediction> classify(int i2, int i3, float[] fArr) {
        ArrayList<Prediction> arrayList = new ArrayList<>();
        ArrayList<Instance> instances = getInstances();
        int size = instances.size();
        TreeMap treeMap = new TreeMap();
        for (int i4 = 0; i4 < size; i4++) {
            Instance instance = instances.get(i4);
            float[] fArr2 = instance.vector;
            if (fArr2.length == fArr.length) {
                double dMinimumCosineDistance = i2 == 2 ? GestureUtils.minimumCosineDistance(fArr2, fArr, i3) : GestureUtils.squaredEuclideanDistance(fArr2, fArr);
                double d2 = dMinimumCosineDistance == 0.0d ? Double.MAX_VALUE : 1.0d / dMinimumCosineDistance;
                Double d3 = (Double) treeMap.get(instance.label);
                if (d3 == null || d2 > d3.doubleValue()) {
                    treeMap.put(instance.label, Double.valueOf(d2));
                }
            }
        }
        for (String str : treeMap.keySet()) {
            arrayList.add(new Prediction(str, ((Double) treeMap.get(str)).doubleValue()));
        }
        Collections.sort(arrayList, sComparator);
        return arrayList;
    }
}
