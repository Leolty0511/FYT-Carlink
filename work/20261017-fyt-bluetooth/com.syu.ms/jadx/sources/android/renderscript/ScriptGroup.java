package android.renderscript;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class ScriptGroup extends BaseObj {
    public IO[] mInputs;
    public IO[] mOutputs;

    public static class IO {
        public Allocation mAllocation;
        public Script.KernelID mKID;

        public IO(Script.KernelID kernelID) {
            this.mKID = kernelID;
        }
    }

    public static class Node {
        public int dagNumber;
        public Node mNext;
        public Script mScript;
        public ArrayList<Script.KernelID> mKernels = new ArrayList<>();
        public ArrayList<ConnectLine> mInputs = new ArrayList<>();
        public ArrayList<ConnectLine> mOutputs = new ArrayList<>();

        public Node(Script script) {
            this.mScript = script;
        }
    }

    public ScriptGroup(int i2, RenderScript renderScript) {
        super(i2, renderScript);
    }

    public void execute() {
        RenderScript renderScript = this.mRS;
        renderScript.nScriptGroupExecute(getID(renderScript));
    }

    public void setInput(Script.KernelID kernelID, Allocation allocation) {
        int i2 = 0;
        while (true) {
            IO[] ioArr = this.mInputs;
            if (i2 >= ioArr.length) {
                throw new RSIllegalArgumentException("Script not found");
            }
            if (ioArr[i2].mKID == kernelID) {
                ioArr[i2].mAllocation = allocation;
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
            if (ioArr[i2].mKID == kernelID) {
                ioArr[i2].mAllocation = allocation;
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
            int[] iArr = new int[this.mKernelCount];
            int i3 = 0;
            for (int i4 = 0; i4 < this.mNodes.size(); i4++) {
                Node node = this.mNodes.get(i4);
                int i5 = 0;
                while (i5 < node.mKernels.size()) {
                    Script.KernelID kernelID = node.mKernels.get(i5);
                    int i6 = i3 + 1;
                    iArr[i3] = kernelID.getID(this.mRS);
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
            int[] iArr2 = new int[this.mLines.size()];
            int[] iArr3 = new int[this.mLines.size()];
            int[] iArr4 = new int[this.mLines.size()];
            int[] iArr5 = new int[this.mLines.size()];
            for (int i9 = 0; i9 < this.mLines.size(); i9++) {
                ConnectLine connectLine = this.mLines.get(i9);
                iArr2[i9] = connectLine.mFrom.getID(this.mRS);
                Script.KernelID kernelID2 = connectLine.mToK;
                if (kernelID2 != null) {
                    iArr3[i9] = kernelID2.getID(this.mRS);
                }
                Script.FieldID fieldID = connectLine.mToF;
                if (fieldID != null) {
                    iArr4[i9] = fieldID.getID(this.mRS);
                }
                iArr5[i9] = connectLine.mAllocationType.getID(this.mRS);
            }
            int iNScriptGroupCreate = this.mRS.nScriptGroupCreate(iArr, iArr2, iArr3, iArr4, iArr5);
            if (iNScriptGroupCreate == 0) {
                throw new RSRuntimeException("Object creation error, should not happen.");
            }
            ScriptGroup scriptGroup = new ScriptGroup(iNScriptGroupCreate, this.mRS);
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

    public static class ConnectLine {
        public Type mAllocationType;
        public Script.KernelID mFrom;
        public Script.FieldID mToF;
        public Script.KernelID mToK;

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
}
