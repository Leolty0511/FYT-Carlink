package android.gesture;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class GestureStore {
    private static final short FILE_FORMAT_VERSION = 1;
    public static final int ORIENTATION_INVARIANT = 1;
    public static final int ORIENTATION_SENSITIVE = 2;
    static final int ORIENTATION_SENSITIVE_4 = 4;
    static final int ORIENTATION_SENSITIVE_8 = 8;
    private static final boolean PROFILE_LOADING_SAVING = false;
    public static final int SEQUENCE_INVARIANT = 1;
    public static final int SEQUENCE_SENSITIVE = 2;
    private int mSequenceType = 2;
    private int mOrientationStyle = 2;
    private final HashMap<String, ArrayList<Gesture>> mNamedGestures = new HashMap<>();
    private boolean mChanged = false;
    private Learner mClassifier = new InstanceLearner();

    private void readFormatV1(DataInputStream dataInputStream) throws IOException {
        Learner learner = this.mClassifier;
        HashMap<String, ArrayList<Gesture>> map = this.mNamedGestures;
        map.clear();
        int i2 = dataInputStream.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            String utf = dataInputStream.readUTF();
            int i4 = dataInputStream.readInt();
            ArrayList<Gesture> arrayList = new ArrayList<>(i4);
            for (int i5 = 0; i5 < i4; i5++) {
                Gesture gestureDeserialize = Gesture.deserialize(dataInputStream);
                arrayList.add(gestureDeserialize);
                learner.addInstance(Instance.createInstance(this.mSequenceType, this.mOrientationStyle, gestureDeserialize, utf));
            }
            map.put(utf, arrayList);
        }
    }

    public void addGesture(String str, Gesture gesture) {
        if (str == null || str.length() == 0) {
            return;
        }
        ArrayList<Gesture> arrayList = this.mNamedGestures.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.mNamedGestures.put(str, arrayList);
        }
        arrayList.add(gesture);
        this.mClassifier.addInstance(Instance.createInstance(this.mSequenceType, this.mOrientationStyle, gesture, str));
        this.mChanged = true;
    }

    public Set<String> getGestureEntries() {
        return this.mNamedGestures.keySet();
    }

    public ArrayList<Gesture> getGestures(String str) {
        ArrayList<Gesture> arrayList = this.mNamedGestures.get(str);
        if (arrayList != null) {
            return new ArrayList<>(arrayList);
        }
        return null;
    }

    public Learner getLearner() {
        return this.mClassifier;
    }

    public int getOrientationStyle() {
        return this.mOrientationStyle;
    }

    public int getSequenceType() {
        return this.mSequenceType;
    }

    public boolean hasChanged() {
        return this.mChanged;
    }

    public void load(InputStream inputStream) throws Throwable {
        load(inputStream, false);
    }

    public ArrayList<Prediction> recognize(Gesture gesture) {
        return this.mClassifier.classify(this.mSequenceType, this.mOrientationStyle, Instance.createInstance(this.mSequenceType, this.mOrientationStyle, gesture, null).vector);
    }

    public void removeEntry(String str) {
        this.mNamedGestures.remove(str);
        this.mClassifier.removeInstances(str);
        this.mChanged = true;
    }

    public void removeGesture(String str, Gesture gesture) {
        ArrayList<Gesture> arrayList = this.mNamedGestures.get(str);
        if (arrayList == null) {
            return;
        }
        arrayList.remove(gesture);
        if (arrayList.isEmpty()) {
            this.mNamedGestures.remove(str);
        }
        this.mClassifier.removeInstance(gesture.getID());
        this.mChanged = true;
    }

    public void save(OutputStream outputStream) throws Throwable {
        save(outputStream, false);
    }

    public void setOrientationStyle(int i2) {
        this.mOrientationStyle = i2;
    }

    public void setSequenceType(int i2) {
        this.mSequenceType = i2;
    }

    public void load(InputStream inputStream, boolean z2) throws Throwable {
        DataInputStream dataInputStream = null;
        try {
            if (!(inputStream instanceof BufferedInputStream)) {
                inputStream = new BufferedInputStream(inputStream, 32768);
            }
            DataInputStream dataInputStream2 = new DataInputStream(inputStream);
            try {
                if (dataInputStream2.readShort() == 1) {
                    readFormatV1(dataInputStream2);
                }
                if (z2) {
                    GestureUtils.closeStream(dataInputStream2);
                }
            } catch (Throwable th) {
                th = th;
                dataInputStream = dataInputStream2;
                if (z2) {
                    GestureUtils.closeStream(dataInputStream);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void save(OutputStream outputStream, boolean z2) throws Throwable {
        DataOutputStream dataOutputStream = null;
        try {
            HashMap<String, ArrayList<Gesture>> map = this.mNamedGestures;
            if (!(outputStream instanceof BufferedOutputStream)) {
                outputStream = new BufferedOutputStream(outputStream, 32768);
            }
            DataOutputStream dataOutputStream2 = new DataOutputStream(outputStream);
            try {
                dataOutputStream2.writeShort(1);
                dataOutputStream2.writeInt(map.size());
                Iterator<Map.Entry<String, ArrayList<Gesture>>> it = map.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<String, ArrayList<Gesture>> next = it.next();
                    String key = next.getKey();
                    ArrayList<Gesture> value = next.getValue();
                    int size = value.size();
                    dataOutputStream2.writeUTF(key);
                    dataOutputStream2.writeInt(size);
                    for (int i2 = 0; i2 < size; i2++) {
                        value.get(i2).serialize(dataOutputStream2);
                    }
                }
                dataOutputStream2.flush();
                this.mChanged = false;
                if (z2) {
                    GestureUtils.closeStream(dataOutputStream2);
                }
            } catch (Throwable th) {
                th = th;
                dataOutputStream = dataOutputStream2;
                if (z2) {
                    GestureUtils.closeStream(dataOutputStream);
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
