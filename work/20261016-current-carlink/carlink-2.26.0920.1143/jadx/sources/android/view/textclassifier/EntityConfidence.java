package android.view.textclassifier;

import com.android.internal.util.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class EntityConfidence<T> {
    private final Comparator<T> mEntityComparator;
    private final Map<T, Float> mEntityConfidence;

    public EntityConfidence() {
        this.mEntityConfidence = new HashMap();
        final int i2 = 0;
        this.mEntityComparator = new Comparator(this) { // from class: android.view.textclassifier.a
            public final /* synthetic */ EntityConfidence c;

            {
                this.c = this;
            }

            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i3 = i2;
                EntityConfidence entityConfidence = this.c;
                switch (i3) {
                    case 0:
                        break;
                    default:
                        break;
                }
                return entityConfidence.lambda$new$0(obj, obj2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$new$0(Object obj, Object obj2) {
        float fFloatValue = this.mEntityConfidence.get(obj).floatValue();
        float fFloatValue2 = this.mEntityConfidence.get(obj2).floatValue();
        if (fFloatValue > fFloatValue2) {
            return -1;
        }
        return fFloatValue < fFloatValue2 ? 1 : 0;
    }

    public float getConfidenceScore(T t2) {
        if (this.mEntityConfidence.containsKey(t2)) {
            return this.mEntityConfidence.get(t2).floatValue();
        }
        return 0.0f;
    }

    public List<T> getEntities() {
        ArrayList arrayList = new ArrayList(this.mEntityConfidence.size());
        arrayList.addAll(this.mEntityConfidence.keySet());
        arrayList.sort(this.mEntityComparator);
        return Collections.unmodifiableList(arrayList);
    }

    public void setEntityType(T t2, float f2) {
        Preconditions.checkNotNull(t2);
        if (f2 > 0.0f) {
            this.mEntityConfidence.put(t2, Float.valueOf(Math.min(1.0f, f2)));
        } else {
            this.mEntityConfidence.remove(t2);
        }
    }

    public String toString() {
        return this.mEntityConfidence.toString();
    }

    public EntityConfidence(EntityConfidence<T> entityConfidence) {
        HashMap map = new HashMap();
        this.mEntityConfidence = map;
        final int i2 = 1;
        this.mEntityComparator = new Comparator(this) { // from class: android.view.textclassifier.a
            public final /* synthetic */ EntityConfidence c;

            {
                this.c = this;
            }

            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int i3 = i2;
                EntityConfidence entityConfidence2 = this.c;
                switch (i3) {
                    case 0:
                        break;
                    default:
                        break;
                }
                return entityConfidence2.lambda$new$0(obj, obj2);
            }
        };
        Preconditions.checkNotNull(entityConfidence);
        map.putAll(entityConfidence.mEntityConfidence);
    }
}
