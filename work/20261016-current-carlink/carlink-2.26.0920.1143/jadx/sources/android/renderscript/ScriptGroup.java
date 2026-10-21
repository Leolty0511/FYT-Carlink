package android.renderscript;

import android.telecom.Logging.Session;
import android.util.Log;
import android.util.Pair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class ScriptGroup extends BaseObj {
    private static final String TAG = "ScriptGroup";
    private List<Closure> mClosures;
    IO[] mInputs;
    private List<Input> mInputs2;
    private String mName;
    IO[] mOutputs;
    private Future[] mOutputs2;

    public static final class Binding {
        private final Script.FieldID mField;
        private final Object mValue;

        public Binding(Script.FieldID fieldID, Object obj) {
            this.mField = fieldID;
            this.mValue = obj;
        }

        public Script.FieldID getField() {
            return this.mField;
        }

        public Object getValue() {
            return this.mValue;
        }
    }

    public static final class Builder2 {
        private static final String TAG = "ScriptGroup.Builder2";
        List<Closure> mClosures = new ArrayList();
        List<Input> mInputs = new ArrayList();
        RenderScript mRS;

        public Builder2(RenderScript renderScript) {
            this.mRS = renderScript;
        }

        private Closure addInvokeInternal(Script.InvokeID invokeID, Object[] objArr, Map<Script.FieldID, Object> map) {
            Closure closure = new Closure(this.mRS, invokeID, objArr, map);
            this.mClosures.add(closure);
            return closure;
        }

        private Closure addKernelInternal(Script.KernelID kernelID, Type type, Object[] objArr, Map<Script.FieldID, Object> map) {
            Closure closure = new Closure(this.mRS, kernelID, type, objArr, map);
            this.mClosures.add(closure);
            return closure;
        }

        private boolean seperateArgsAndBindings(Object[] objArr, ArrayList<Object> arrayList, Map<Script.FieldID, Object> map) {
            int i2 = 0;
            while (i2 < objArr.length) {
                Object obj = objArr[i2];
                if (obj instanceof Binding) {
                    break;
                }
                arrayList.add(obj);
                i2++;
            }
            while (i2 < objArr.length) {
                Object obj2 = objArr[i2];
                if (!(obj2 instanceof Binding)) {
                    return false;
                }
                Binding binding = (Binding) obj2;
                map.put(binding.getField(), binding.getValue());
                i2++;
            }
            return true;
        }

        public Input addInput() {
            Input input = new Input();
            this.mInputs.add(input);
            return input;
        }

        public Closure addInvoke(Script.InvokeID invokeID, Object... objArr) {
            ArrayList<Object> arrayList = new ArrayList<>();
            HashMap map = new HashMap();
            if (seperateArgsAndBindings(objArr, arrayList, map)) {
                return addInvokeInternal(invokeID, arrayList.toArray(), map);
            }
            return null;
        }

        public Closure addKernel(Script.KernelID kernelID, Type type, Object... objArr) {
            ArrayList<Object> arrayList = new ArrayList<>();
            HashMap map = new HashMap();
            if (seperateArgsAndBindings(objArr, arrayList, map)) {
                return addKernelInternal(kernelID, type, arrayList.toArray(), map);
            }
            return null;
        }

        public ScriptGroup create(String str, Future... futureArr) {
            if (str == null || str.isEmpty() || str.length() > 100 || !str.equals(str.replaceAll("[^a-zA-Z0-9-]", Session.SESSION_SEPARATION_CHAR_CHILD))) {
                throw new RSIllegalArgumentException("invalid script group name");
            }
            ScriptGroup scriptGroup = new ScriptGroup(this.mRS, str, this.mClosures, this.mInputs, futureArr);
            this.mClosures = new ArrayList();
            this.mInputs = new ArrayList();
            return scriptGroup;
        }
    }

    public static final class Closure extends BaseObj {
        private static final String TAG = "Closure";
        private Object[] mArgs;
        private Map<Script.FieldID, Object> mBindings;
        private FieldPacker mFP;
        private Map<Script.FieldID, Future> mGlobalFuture;
        private Future mReturnFuture;
        private Allocation mReturnValue;

        public static final class ValueAndSize {
            public int size;
            public long value;

            public ValueAndSize(RenderScript renderScript, Object obj) {
                if (obj instanceof Allocation) {
                    this.value = ((Allocation) obj).getID(renderScript);
                    this.size = -1;
                    return;
                }
                if (obj instanceof Boolean) {
                    this.value = ((Boolean) obj).booleanValue() ? 1L : 0L;
                    this.size = 4;
                    return;
                }
                if (obj instanceof Integer) {
                    this.value = ((Integer) obj).longValue();
                    this.size = 4;
                    return;
                }
                if (obj instanceof Long) {
                    this.value = ((Long) obj).longValue();
                    this.size = 8;
                } else if (obj instanceof Float) {
                    this.value = Float.floatToRawIntBits(((Float) obj).floatValue());
                    this.size = 4;
                } else if (obj instanceof Double) {
                    this.value = Double.doubleToRawLongBits(((Double) obj).doubleValue());
                    this.size = 8;
                }
            }
        }

        public Closure(long j2, RenderScript renderScript) {
            super(j2, renderScript);
        }

        private void retrieveValueAndDependenceInfo(RenderScript renderScript, int i2, Script.FieldID fieldID, Object obj, long[] jArr, int[] iArr, long[] jArr2, long[] jArr3) {
            if (obj instanceof Future) {
                Future future = (Future) obj;
                Object value = future.getValue();
                jArr2[i2] = future.getClosure().getID(renderScript);
                Script.FieldID fieldID2 = future.getFieldID();
                jArr3[i2] = fieldID2 != null ? fieldID2.getID(renderScript) : 0L;
                obj = value;
            } else {
                jArr2[i2] = 0;
                jArr3[i2] = 0;
            }
            if (!(obj instanceof Input)) {
                ValueAndSize valueAndSize = new ValueAndSize(renderScript, obj);
                jArr[i2] = valueAndSize.value;
                iArr[i2] = valueAndSize.size;
            } else {
                Input input = (Input) obj;
                if (i2 < this.mArgs.length) {
                    input.addReference(this, i2);
                } else {
                    input.addReference(this, fieldID);
                }
                jArr[i2] = 0;
                iArr[i2] = 0;
            }
        }

        @Override // android.renderscript.BaseObj
        public void destroy() {
            super.destroy();
            Allocation allocation = this.mReturnValue;
            if (allocation != null) {
                allocation.destroy();
            }
        }

        @Override // android.renderscript.BaseObj
        public void finalize() {
            this.mReturnValue = null;
            super.finalize();
        }

        public Future getGlobal(Script.FieldID fieldID) {
            Future future = this.mGlobalFuture.get(fieldID);
            if (future != null) {
                return future;
            }
            Object value = this.mBindings.get(fieldID);
            if (value instanceof Future) {
                value = ((Future) value).getValue();
            }
            Future future2 = new Future(this, fieldID, value);
            this.mGlobalFuture.put(fieldID, future2);
            return future2;
        }

        public Future getReturn() {
            if (this.mReturnFuture == null) {
                this.mReturnFuture = new Future(this, null, this.mReturnValue);
            }
            return this.mReturnFuture;
        }

        public void setArg(int i2, Object obj) {
            if (obj instanceof Future) {
                obj = ((Future) obj).getValue();
            }
            this.mArgs[i2] = obj;
            ValueAndSize valueAndSize = new ValueAndSize(this.mRS, obj);
            RenderScript renderScript = this.mRS;
            renderScript.nClosureSetArg(getID(renderScript), i2, valueAndSize.value, valueAndSize.size);
        }

        public void setGlobal(Script.FieldID fieldID, Object obj) {
            if (obj instanceof Future) {
                obj = ((Future) obj).getValue();
            }
            this.mBindings.put(fieldID, obj);
            ValueAndSize valueAndSize = new ValueAndSize(this.mRS, obj);
            RenderScript renderScript = this.mRS;
            renderScript.nClosureSetGlobal(getID(renderScript), fieldID.getID(this.mRS), valueAndSize.value, valueAndSize.size);
        }

        public Closure(RenderScript renderScript, Script.KernelID kernelID, Type type, Object[] objArr, Map<Script.FieldID, Object> map) {
            super(0L, renderScript);
            this.mArgs = objArr;
            this.mReturnValue = Allocation.createTyped(renderScript, type);
            this.mBindings = map;
            this.mGlobalFuture = new HashMap();
            int size = map.size() + objArr.length;
            long[] jArr = new long[size];
            long[] jArr2 = new long[size];
            int[] iArr = new int[size];
            long[] jArr3 = new long[size];
            long[] jArr4 = new long[size];
            int i2 = 0;
            while (i2 < objArr.length) {
                jArr[i2] = 0;
                long[] jArr5 = jArr4;
                long[] jArr6 = jArr3;
                retrieveValueAndDependenceInfo(renderScript, i2, null, objArr[i2], jArr2, iArr, jArr6, jArr5);
                i2++;
                jArr2 = jArr2;
                jArr3 = jArr6;
                jArr4 = jArr5;
                iArr = iArr;
            }
            int i3 = i2;
            long[] jArr7 = jArr4;
            long[] jArr8 = jArr3;
            int[] iArr2 = iArr;
            long[] jArr9 = jArr2;
            for (Map.Entry<Script.FieldID, Object> entry : map.entrySet()) {
                Object value = entry.getValue();
                Script.FieldID key = entry.getKey();
                jArr[i3] = key.getID(renderScript);
                retrieveValueAndDependenceInfo(renderScript, i3, key, value, jArr9, iArr2, jArr8, jArr7);
                i3++;
            }
            setID(renderScript.nClosureCreate(kernelID.getID(renderScript), this.mReturnValue.getID(renderScript), jArr, jArr9, iArr2, jArr8, jArr7));
            this.guard.open("destroy");
        }

        public Closure(RenderScript renderScript, Script.InvokeID invokeID, Object[] objArr, Map<Script.FieldID, Object> map) {
            super(0L, renderScript);
            this.mFP = FieldPacker.createFromArray(objArr);
            this.mArgs = objArr;
            this.mBindings = map;
            this.mGlobalFuture = new HashMap();
            int size = map.size();
            long[] jArr = new long[size];
            long[] jArr2 = new long[size];
            int[] iArr = new int[size];
            long[] jArr3 = new long[size];
            long[] jArr4 = new long[size];
            int i2 = 0;
            for (Map.Entry<Script.FieldID, Object> entry : map.entrySet()) {
                Object value = entry.getValue();
                Script.FieldID key = entry.getKey();
                jArr[i2] = key.getID(renderScript);
                retrieveValueAndDependenceInfo(renderScript, i2, key, value, jArr2, iArr, jArr3, jArr4);
                i2++;
            }
            setID(renderScript.nInvokeClosureCreate(invokeID.getID(renderScript), this.mFP.getData(), jArr, jArr2, iArr));
            this.guard.open("destroy");
        }
    }

    public static final class Future {
        Closure mClosure;
        Script.FieldID mFieldID;
        Object mValue;

        public Future(Closure closure, Script.FieldID fieldID, Object obj) {
            this.mClosure = closure;
            this.mFieldID = fieldID;
            this.mValue = obj;
        }

        public Closure getClosure() {
            return this.mClosure;
        }

        public Script.FieldID getFieldID() {
            return this.mFieldID;
        }

        public Object getValue() {
            return this.mValue;
        }
    }

    public static class IO {
        Allocation mAllocation;
        Script.KernelID mKID;

        public IO(Script.KernelID kernelID) {
            this.mKID = kernelID;
        }
    }

    public static final class Input {
        Object mValue;
        List<Pair<Closure, Script.FieldID>> mFieldID = new ArrayList();
        List<Pair<Closure, Integer>> mArgIndex = new ArrayList();

        public void addReference(Closure closure, int i2) {
            this.mArgIndex.add(Pair.create(closure, Integer.valueOf(i2)));
        }

        public Object get() {
            return this.mValue;
        }

        public void set(Object obj) {
            this.mValue = obj;
            for (Pair<Closure, Integer> pair : this.mArgIndex) {
                pair.first.setArg(pair.second.intValue(), obj);
            }
            for (Pair<Closure, Script.FieldID> pair2 : this.mFieldID) {
                pair2.first.setGlobal(pair2.second, obj);
            }
        }

        public void addReference(Closure closure, Script.FieldID fieldID) {
            this.mFieldID.add(Pair.create(closure, fieldID));
        }
    }

    public static class Node {
        int dagNumber;
        Node mNext;
        Script mScript;
        ArrayList<Script.KernelID> mKernels = new ArrayList<>();
        ArrayList<ConnectLine> mInputs = new ArrayList<>();
        ArrayList<ConnectLine> mOutputs = new ArrayList<>();

        public Node(Script script) {
            this.mScript = script;
        }
    }

    public ScriptGroup(long j2, RenderScript renderScript) {
        super(j2, renderScript);
        this.guard.open("destroy");
    }

    @Override // android.renderscript.BaseObj
    public void destroy() {
        super.destroy();
        List<Closure> list = this.mClosures;
        if (list != null) {
            Iterator<Closure> it = list.iterator();
            while (it.hasNext()) {
                it.next().destroy();
            }
        }
    }

    public Object[] execute(Object... objArr) {
        if (objArr.length < this.mInputs2.size()) {
            Log.e(TAG, toString() + " receives " + objArr.length + " inputs, less than expected " + this.mInputs2.size());
            return null;
        }
        if (objArr.length > this.mInputs2.size()) {
            Log.i(TAG, toString() + " receives " + objArr.length + " inputs, more than expected " + this.mInputs2.size());
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.mInputs2.size(); i3++) {
            Object obj = objArr[i3];
            if ((obj instanceof Future) || (obj instanceof Input)) {
                Log.e(TAG, toString() + ": input " + i3 + " is a future or unbound value");
                return null;
            }
            this.mInputs2.get(i3).set(obj);
        }
        RenderScript renderScript = this.mRS;
        renderScript.nScriptGroup2Execute(getID(renderScript));
        Future[] futureArr = this.mOutputs2;
        Object[] objArr2 = new Object[futureArr.length];
        int length = futureArr.length;
        int i4 = 0;
        while (i2 < length) {
            Object value = futureArr[i2].getValue();
            if (value instanceof Input) {
                value = ((Input) value).get();
            }
            objArr2[i4] = value;
            i2++;
            i4++;
        }
        return objArr2;
    }

    public void setInput(Script.KernelID kernelID, Allocation allocation) {
        int i2 = 0;
        while (true) {
            IO[] ioArr = this.mInputs;
            if (i2 >= ioArr.length) {
                throw new RSIllegalArgumentException("Script not found");
            }
            IO io = ioArr[i2];
            if (io.mKID == kernelID) {
                io.mAllocation = allocation;
                RenderScript renderScript = this.mRS;
                renderScript.nScriptGroupSetInput(getID(renderScript), kernelID.getID(this.mRS), this.mRS.safeID(allocation));
                return;
            }
            i2++;
        }
    }

    public void setOutput(Script.KernelID kernelID, Allocation allocation) {
        int i2 = 0;
        while (true) {
            IO[] ioArr = this.mOutputs;
            if (i2 >= ioArr.length) {
                throw new RSIllegalArgumentException("Script not found");
            }
            IO io = ioArr[i2];
            if (io.mKID == kernelID) {
                io.mAllocation = allocation;
                RenderScript renderScript = this.mRS;
                renderScript.nScriptGroupSetOutput(getID(renderScript), kernelID.getID(this.mRS), this.mRS.safeID(allocation));
                return;
            }
            i2++;
        }
    }

    public static final class Builder {
        private int mKernelCount;
        private RenderScript mRS;
        private ArrayList<Node> mNodes = new ArrayList<>();
        private ArrayList<ConnectLine> mLines = new ArrayList<>();

        public Builder(RenderScript renderScript) {
            this.mRS = renderScript;
        }

        private Node findNode(Script script) {
            for (int i2 = 0; i2 < this.mNodes.size(); i2++) {
                if (script == this.mNodes.get(i2).mScript) {
                    return this.mNodes.get(i2);
                }
            }
            return null;
        }

        private void mergeDAGs(int i2, int i3) {
            for (int i4 = 0; i4 < this.mNodes.size(); i4++) {
                if (this.mNodes.get(i4).dagNumber == i3) {
                    this.mNodes.get(i4).dagNumber = i2;
                }
            }
        }

        private void validateCycle(Node node, Node node2) {
            for (int i2 = 0; i2 < node.mOutputs.size(); i2++) {
                ConnectLine connectLine = node.mOutputs.get(i2);
                Script.KernelID kernelID = connectLine.mToK;
                if (kernelID != null) {
                    Node nodeFindNode = findNode(kernelID.mScript);
                    if (nodeFindNode.equals(node2)) {
                        throw new RSInvalidStateException("Loops in group not allowed.");
                    }
                    validateCycle(nodeFindNode, node2);
                }
                Script.FieldID fieldID = connectLine.mToF;
                if (fieldID != null) {
                    Node nodeFindNode2 = findNode(fieldID.mScript);
                    if (nodeFindNode2.equals(node2)) {
                        throw new RSInvalidStateException("Loops in group not allowed.");
                    }
                    validateCycle(nodeFindNode2, node2);
                }
            }
        }

        private void validateDAG() {
            for (int i2 = 0; i2 < this.mNodes.size(); i2++) {
                Node node = this.mNodes.get(i2);
                if (node.mInputs.size() == 0) {
                    if (node.mOutputs.size() == 0 && this.mNodes.size() > 1) {
                        throw new RSInvalidStateException("Groups cannot contain unconnected scripts");
                    }
                    validateDAGRecurse(node, i2 + 1);
                }
            }
            int i3 = this.mNodes.get(0).dagNumber;
            for (int i4 = 0; i4 < this.mNodes.size(); i4++) {
                if (this.mNodes.get(i4).dagNumber != i3) {
                    throw new RSInvalidStateException("Multiple DAGs in group not allowed.");
                }
            }
        }

        private void validateDAGRecurse(Node node, int i2) {
            int i3 = node.dagNumber;
            if (i3 != 0 && i3 != i2) {
                mergeDAGs(i3, i2);
                return;
            }
            node.dagNumber = i2;
            for (int i4 = 0; i4 < node.mOutputs.size(); i4++) {
                ConnectLine connectLine = node.mOutputs.get(i4);
                Script.KernelID kernelID = connectLine.mToK;
                if (kernelID != null) {
                    validateDAGRecurse(findNode(kernelID.mScript), i2);
                }
                Script.FieldID fieldID = connectLine.mToF;
                if (fieldID != null) {
                    validateDAGRecurse(findNode(fieldID.mScript), i2);
                }
            }
        }

        public Builder addConnection(Type type, Script.KernelID kernelID, Script.FieldID fieldID) {
            Node nodeFindNode = findNode(kernelID);
            if (nodeFindNode == null) {
                throw new RSInvalidStateException("From script not found.");
            }
            Node nodeFindNode2 = findNode(fieldID.mScript);
            if (nodeFindNode2 == null) {
                throw new RSInvalidStateException("To script not found.");
            }
            ConnectLine connectLine = new ConnectLine(type, kernelID, fieldID);
            this.mLines.add(new ConnectLine(type, kernelID, fieldID));
            nodeFindNode.mOutputs.add(connectLine);
            nodeFindNode2.mInputs.add(connectLine);
            validateCycle(nodeFindNode, nodeFindNode);
            return this;
        }

        public Builder addKernel(Script.KernelID kernelID) {
            if (this.mLines.size() != 0) {
                throw new RSInvalidStateException("Kernels may not be added once connections exist.");
            }
            if (findNode(kernelID) != null) {
                return this;
            }
            this.mKernelCount++;
            Node nodeFindNode = findNode(kernelID.mScript);
            if (nodeFindNode == null) {
                nodeFindNode = new Node(kernelID.mScript);
                this.mNodes.add(nodeFindNode);
            }
            nodeFindNode.mKernels.add(kernelID);
            return this;
        }

        public ScriptGroup create() {
            if (this.mNodes.size() == 0) {
                throw new RSInvalidStateException("Empty script groups are not allowed");
            }
            for (int i2 = 0; i2 < this.mNodes.size(); i2++) {
                this.mNodes.get(i2).dagNumber = 0;
            }
            validateDAG();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            long[] jArr = new long[this.mKernelCount];
            int i3 = 0;
            for (int i4 = 0; i4 < this.mNodes.size(); i4++) {
                Node node = this.mNodes.get(i4);
                int i5 = 0;
                while (i5 < node.mKernels.size()) {
                    Script.KernelID kernelID = node.mKernels.get(i5);
                    int i6 = i3 + 1;
                    jArr[i3] = kernelID.getID(this.mRS);
                    boolean z2 = false;
                    for (int i7 = 0; i7 < node.mInputs.size(); i7++) {
                        if (node.mInputs.get(i7).mToK == kernelID) {
                            z2 = true;
                        }
                    }
                    boolean z3 = false;
                    for (int i8 = 0; i8 < node.mOutputs.size(); i8++) {
                        if (node.mOutputs.get(i8).mFrom == kernelID) {
                            z3 = true;
                        }
                    }
                    if (!z2) {
                        arrayList.add(new IO(kernelID));
                    }
                    if (!z3) {
                        arrayList2.add(new IO(kernelID));
                    }
                    i5++;
                    i3 = i6;
                }
            }
            if (i3 != this.mKernelCount) {
                throw new RSRuntimeException("Count mismatch, should not happen.");
            }
            long[] jArr2 = new long[this.mLines.size()];
            long[] jArr3 = new long[this.mLines.size()];
            long[] jArr4 = new long[this.mLines.size()];
            long[] jArr5 = new long[this.mLines.size()];
            for (int i9 = 0; i9 < this.mLines.size(); i9++) {
                ConnectLine connectLine = this.mLines.get(i9);
                jArr2[i9] = connectLine.mFrom.getID(this.mRS);
                Script.KernelID kernelID2 = connectLine.mToK;
                if (kernelID2 != null) {
                    jArr3[i9] = kernelID2.getID(this.mRS);
                }
                Script.FieldID fieldID = connectLine.mToF;
                if (fieldID != null) {
                    jArr4[i9] = fieldID.getID(this.mRS);
                }
                jArr5[i9] = connectLine.mAllocationType.getID(this.mRS);
            }
            long jNScriptGroupCreate = this.mRS.nScriptGroupCreate(jArr, jArr2, jArr3, jArr4, jArr5);
            if (jNScriptGroupCreate == 0) {
                throw new RSRuntimeException("Object creation error, should not happen.");
            }
            ScriptGroup scriptGroup = new ScriptGroup(jNScriptGroupCreate, this.mRS);
            scriptGroup.mOutputs = new IO[arrayList2.size()];
            for (int i10 = 0; i10 < arrayList2.size(); i10++) {
                scriptGroup.mOutputs[i10] = (IO) arrayList2.get(i10);
            }
            scriptGroup.mInputs = new IO[arrayList.size()];
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                scriptGroup.mInputs[i11] = (IO) arrayList.get(i11);
            }
            return scriptGroup;
        }

        private Node findNode(Script.KernelID kernelID) {
            for (int i2 = 0; i2 < this.mNodes.size(); i2++) {
                Node node = this.mNodes.get(i2);
                for (int i3 = 0; i3 < node.mKernels.size(); i3++) {
                    if (kernelID == node.mKernels.get(i3)) {
                        return node;
                    }
                }
            }
            return null;
        }

        public Builder addConnection(Type type, Script.KernelID kernelID, Script.KernelID kernelID2) {
            Node nodeFindNode = findNode(kernelID);
            if (nodeFindNode != null) {
                Node nodeFindNode2 = findNode(kernelID2);
                if (nodeFindNode2 != null) {
                    ConnectLine connectLine = new ConnectLine(type, kernelID, kernelID2);
                    this.mLines.add(new ConnectLine(type, kernelID, kernelID2));
                    nodeFindNode.mOutputs.add(connectLine);
                    nodeFindNode2.mInputs.add(connectLine);
                    validateCycle(nodeFindNode, nodeFindNode);
                    return this;
                }
                throw new RSInvalidStateException("To script not found.");
            }
            throw new RSInvalidStateException("From script not found.");
        }
    }

    public ScriptGroup(RenderScript renderScript, String str, List<Closure> list, List<Input> list2, Future[] futureArr) {
        super(0L, renderScript);
        this.mName = str;
        this.mClosures = list;
        this.mInputs2 = list2;
        this.mOutputs2 = futureArr;
        int size = list.size();
        long[] jArr = new long[size];
        for (int i2 = 0; i2 < size; i2++) {
            jArr[i2] = list.get(i2).getID(renderScript);
        }
        setID(renderScript.nScriptGroup2Create(str, RenderScript.getCachePath(), jArr));
        this.guard.open("destroy");
    }

    public static class ConnectLine {
        Type mAllocationType;
        Script.KernelID mFrom;
        Script.FieldID mToF;
        Script.KernelID mToK;

        public ConnectLine(Type type, Script.KernelID kernelID, Script.KernelID kernelID2) {
            this.mFrom = kernelID;
            this.mToK = kernelID2;
            this.mAllocationType = type;
        }

        public ConnectLine(Type type, Script.KernelID kernelID, Script.FieldID fieldID) {
            this.mFrom = kernelID;
            this.mToF = fieldID;
            this.mAllocationType = type;
        }
    }

    public void execute() {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptGroupExecute(getID(renderScript));
    }
}
