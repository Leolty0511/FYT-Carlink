package android.renderscript;

import android.provider.BrowserContract;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public class Mesh extends BaseObj {
    Allocation[] mIndexBuffers;
    Primitive[] mPrimitives;
    Allocation[] mVertexBuffers;

    public static class AllocationBuilder {
        RenderScript mRS;
        int mVertexTypeCount = 0;
        Entry[] mVertexTypes = new Entry[16];
        Vector mIndexTypes = new Vector();

        public class Entry {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            Allocation f173a;
            Primitive prim;

            public Entry() {
            }
        }

        public AllocationBuilder(RenderScript renderScript) {
            this.mRS = renderScript;
        }

        public AllocationBuilder addIndexSetAllocation(Allocation allocation, Primitive primitive) {
            Entry entry = new Entry();
            entry.f173a = allocation;
            entry.prim = primitive;
            this.mIndexTypes.addElement(entry);
            return this;
        }

        public AllocationBuilder addIndexSetType(Primitive primitive) {
            Entry entry = new Entry();
            entry.f173a = null;
            entry.prim = primitive;
            this.mIndexTypes.addElement(entry);
            return this;
        }

        public AllocationBuilder addVertexAllocation(Allocation allocation) {
            int i2 = this.mVertexTypeCount;
            Entry[] entryArr = this.mVertexTypes;
            if (i2 >= entryArr.length) {
                throw new IllegalStateException("Max vertex types exceeded.");
            }
            entryArr[i2] = new Entry();
            Entry[] entryArr2 = this.mVertexTypes;
            int i3 = this.mVertexTypeCount;
            entryArr2[i3].f173a = allocation;
            this.mVertexTypeCount = i3 + 1;
            return this;
        }

        public Mesh create() {
            this.mRS.validate();
            long[] jArr = new long[this.mVertexTypeCount];
            long[] jArr2 = new long[this.mIndexTypes.size()];
            int[] iArr = new int[this.mIndexTypes.size()];
            Allocation[] allocationArr = new Allocation[this.mIndexTypes.size()];
            Primitive[] primitiveArr = new Primitive[this.mIndexTypes.size()];
            Allocation[] allocationArr2 = new Allocation[this.mVertexTypeCount];
            for (int i2 = 0; i2 < this.mVertexTypeCount; i2++) {
                Allocation allocation = this.mVertexTypes[i2].f173a;
                allocationArr2[i2] = allocation;
                jArr[i2] = allocation.getID(this.mRS);
            }
            for (int i3 = 0; i3 < this.mIndexTypes.size(); i3++) {
                Entry entry = (Entry) this.mIndexTypes.elementAt(i3);
                Allocation allocation2 = entry.f173a;
                long id = allocation2 == null ? 0L : allocation2.getID(this.mRS);
                allocationArr[i3] = entry.f173a;
                Primitive primitive = entry.prim;
                primitiveArr[i3] = primitive;
                jArr2[i3] = id;
                iArr[i3] = primitive.mID;
            }
            Mesh mesh = new Mesh(this.mRS.nMeshCreate(jArr, jArr2, iArr), this.mRS);
            mesh.mVertexBuffers = allocationArr2;
            mesh.mIndexBuffers = allocationArr;
            mesh.mPrimitives = primitiveArr;
            return mesh;
        }

        public int getCurrentIndexSetIndex() {
            return this.mIndexTypes.size() - 1;
        }

        public int getCurrentVertexTypeIndex() {
            return this.mVertexTypeCount - 1;
        }
    }

    public enum Primitive {
        POINT(0),
        LINE(1),
        LINE_STRIP(2),
        TRIANGLE(3),
        TRIANGLE_STRIP(4),
        TRIANGLE_FAN(5);

        int mID;

        Primitive(int i2) {
            this.mID = i2;
        }
    }

    public Mesh(long j2, RenderScript renderScript) {
        super(j2, renderScript);
        this.guard.open("destroy");
    }

    public Allocation getIndexSetAllocation(int i2) {
        return this.mIndexBuffers[i2];
    }

    public Primitive getPrimitive(int i2) {
        return this.mPrimitives[i2];
    }

    public int getPrimitiveCount() {
        Allocation[] allocationArr = this.mIndexBuffers;
        if (allocationArr == null) {
            return 0;
        }
        return allocationArr.length;
    }

    public Allocation getVertexAllocation(int i2) {
        return this.mVertexBuffers[i2];
    }

    public int getVertexAllocationCount() {
        Allocation[] allocationArr = this.mVertexBuffers;
        if (allocationArr == null) {
            return 0;
        }
        return allocationArr.length;
    }

    @Override // android.renderscript.BaseObj
    public void updateFromNative() {
        super.updateFromNative();
        RenderScript renderScript = this.mRS;
        int iNMeshGetVertexBufferCount = renderScript.nMeshGetVertexBufferCount(getID(renderScript));
        RenderScript renderScript2 = this.mRS;
        int iNMeshGetIndexCount = renderScript2.nMeshGetIndexCount(getID(renderScript2));
        long[] jArr = new long[iNMeshGetVertexBufferCount];
        long[] jArr2 = new long[iNMeshGetIndexCount];
        int[] iArr = new int[iNMeshGetIndexCount];
        RenderScript renderScript3 = this.mRS;
        renderScript3.nMeshGetVertices(getID(renderScript3), jArr, iNMeshGetVertexBufferCount);
        RenderScript renderScript4 = this.mRS;
        renderScript4.nMeshGetIndices(getID(renderScript4), jArr2, iArr, iNMeshGetIndexCount);
        this.mVertexBuffers = new Allocation[iNMeshGetVertexBufferCount];
        this.mIndexBuffers = new Allocation[iNMeshGetIndexCount];
        this.mPrimitives = new Primitive[iNMeshGetIndexCount];
        for (int i2 = 0; i2 < iNMeshGetVertexBufferCount; i2++) {
            if (jArr[i2] != 0) {
                this.mVertexBuffers[i2] = new Allocation(jArr[i2], this.mRS, null, 1);
                this.mVertexBuffers[i2].updateFromNative();
            }
        }
        for (int i3 = 0; i3 < iNMeshGetIndexCount; i3++) {
            if (jArr2[i3] != 0) {
                this.mIndexBuffers[i3] = new Allocation(jArr2[i3], this.mRS, null, 1);
                this.mIndexBuffers[i3].updateFromNative();
            }
            this.mPrimitives[i3] = Primitive.values()[iArr[i3]];
        }
    }

    public static class Builder {
        RenderScript mRS;
        int mUsage;
        int mVertexTypeCount = 0;
        Entry[] mVertexTypes = new Entry[16];
        Vector mIndexTypes = new Vector();

        public class Entry {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            Element f174e;
            Primitive prim;
            int size;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            Type f175t;
            int usage;

            public Entry() {
            }
        }

        public Builder(RenderScript renderScript, int i2) {
            this.mRS = renderScript;
            this.mUsage = i2;
        }

        public Builder addIndexSetType(Type type, Primitive primitive) {
            Entry entry = new Entry();
            entry.f175t = type;
            entry.f174e = null;
            entry.size = 0;
            entry.prim = primitive;
            this.mIndexTypes.addElement(entry);
            return this;
        }

        public Builder addVertexType(Type type) {
            int i2 = this.mVertexTypeCount;
            Entry[] entryArr = this.mVertexTypes;
            if (i2 >= entryArr.length) {
                throw new IllegalStateException("Max vertex types exceeded.");
            }
            entryArr[i2] = new Entry();
            Entry[] entryArr2 = this.mVertexTypes;
            int i3 = this.mVertexTypeCount;
            Entry entry = entryArr2[i3];
            entry.f175t = type;
            entry.f174e = null;
            this.mVertexTypeCount = i3 + 1;
            return this;
        }

        public Mesh create() {
            Allocation allocationCreateSized;
            Allocation allocationCreateSized2;
            this.mRS.validate();
            long[] jArr = new long[this.mVertexTypeCount];
            long[] jArr2 = new long[this.mIndexTypes.size()];
            int[] iArr = new int[this.mIndexTypes.size()];
            Allocation[] allocationArr = new Allocation[this.mVertexTypeCount];
            Allocation[] allocationArr2 = new Allocation[this.mIndexTypes.size()];
            Primitive[] primitiveArr = new Primitive[this.mIndexTypes.size()];
            for (int i2 = 0; i2 < this.mVertexTypeCount; i2++) {
                Entry entry = this.mVertexTypes[i2];
                Type type = entry.f175t;
                if (type != null) {
                    allocationCreateSized2 = Allocation.createTyped(this.mRS, type, this.mUsage);
                } else {
                    Element element = entry.f174e;
                    if (element == null) {
                        throw new IllegalStateException("Builder corrupt, no valid element in entry.");
                    }
                    allocationCreateSized2 = Allocation.createSized(this.mRS, element, entry.size, this.mUsage);
                }
                allocationArr[i2] = allocationCreateSized2;
                jArr[i2] = allocationCreateSized2.getID(this.mRS);
            }
            for (int i3 = 0; i3 < this.mIndexTypes.size(); i3++) {
                Entry entry2 = (Entry) this.mIndexTypes.elementAt(i3);
                Type type2 = entry2.f175t;
                if (type2 != null) {
                    allocationCreateSized = Allocation.createTyped(this.mRS, type2, this.mUsage);
                } else {
                    Element element2 = entry2.f174e;
                    if (element2 == null) {
                        throw new IllegalStateException("Builder corrupt, no valid element in entry.");
                    }
                    allocationCreateSized = Allocation.createSized(this.mRS, element2, entry2.size, this.mUsage);
                }
                long id = allocationCreateSized == null ? 0L : allocationCreateSized.getID(this.mRS);
                allocationArr2[i3] = allocationCreateSized;
                Primitive primitive = entry2.prim;
                primitiveArr[i3] = primitive;
                jArr2[i3] = id;
                iArr[i3] = primitive.mID;
            }
            Mesh mesh = new Mesh(this.mRS.nMeshCreate(jArr, jArr2, iArr), this.mRS);
            mesh.mVertexBuffers = allocationArr;
            mesh.mIndexBuffers = allocationArr2;
            mesh.mPrimitives = primitiveArr;
            return mesh;
        }

        public int getCurrentIndexSetIndex() {
            return this.mIndexTypes.size() - 1;
        }

        public int getCurrentVertexTypeIndex() {
            return this.mVertexTypeCount - 1;
        }

        public Type newType(Element element, int i2) {
            Type.Builder builder = new Type.Builder(this.mRS, element);
            builder.setX(i2);
            return builder.create();
        }

        public Builder addIndexSetType(Primitive primitive) {
            Entry entry = new Entry();
            entry.f175t = null;
            entry.f174e = null;
            entry.size = 0;
            entry.prim = primitive;
            this.mIndexTypes.addElement(entry);
            return this;
        }

        public Builder addVertexType(Element element, int i2) {
            int i3 = this.mVertexTypeCount;
            Entry[] entryArr = this.mVertexTypes;
            if (i3 < entryArr.length) {
                entryArr[i3] = new Entry();
                Entry[] entryArr2 = this.mVertexTypes;
                int i4 = this.mVertexTypeCount;
                Entry entry = entryArr2[i4];
                entry.f175t = null;
                entry.f174e = element;
                entry.size = i2;
                this.mVertexTypeCount = i4 + 1;
                return this;
            }
            throw new IllegalStateException("Max vertex types exceeded.");
        }

        public Builder addIndexSetType(Element element, int i2, Primitive primitive) {
            Entry entry = new Entry();
            entry.f175t = null;
            entry.f174e = element;
            entry.size = i2;
            entry.prim = primitive;
            this.mIndexTypes.addElement(entry);
            return this;
        }
    }

    public static class TriangleMeshBuilder {
        public static final int COLOR = 1;
        public static final int NORMAL = 2;
        public static final int TEXTURE_0 = 256;
        Element mElement;
        int mFlags;
        RenderScript mRS;
        int mVtxSize;
        float mNX = 0.0f;
        float mNY = 0.0f;
        float mNZ = -1.0f;
        float mS0 = 0.0f;
        float mT0 = 0.0f;
        float mR = 1.0f;
        float mG = 1.0f;
        float mB = 1.0f;
        float mA = 1.0f;
        int mVtxCount = 0;
        int mMaxIndex = 0;
        int mIndexCount = 0;
        float[] mVtxData = new float[128];
        short[] mIndexData = new short[128];

        public TriangleMeshBuilder(RenderScript renderScript, int i2, int i3) {
            this.mRS = renderScript;
            this.mVtxSize = i2;
            this.mFlags = i3;
            if (i2 < 2 || i2 > 3) {
                throw new IllegalArgumentException("Vertex size out of range.");
            }
        }

        private void latch() {
            if ((this.mFlags & 1) != 0) {
                makeSpace(4);
                float[] fArr = this.mVtxData;
                int i2 = this.mVtxCount;
                int i3 = i2 + 1;
                fArr[i2] = this.mR;
                int i4 = i3 + 1;
                fArr[i3] = this.mG;
                int i5 = i4 + 1;
                fArr[i4] = this.mB;
                this.mVtxCount = i5 + 1;
                fArr[i5] = this.mA;
            }
            if ((this.mFlags & 256) != 0) {
                makeSpace(2);
                float[] fArr2 = this.mVtxData;
                int i6 = this.mVtxCount;
                int i7 = i6 + 1;
                fArr2[i6] = this.mS0;
                this.mVtxCount = i7 + 1;
                fArr2[i7] = this.mT0;
            }
            if ((this.mFlags & 2) != 0) {
                makeSpace(4);
                float[] fArr3 = this.mVtxData;
                int i8 = this.mVtxCount;
                int i9 = i8 + 1;
                fArr3[i8] = this.mNX;
                int i10 = i9 + 1;
                fArr3[i9] = this.mNY;
                int i11 = i10 + 1;
                fArr3[i10] = this.mNZ;
                this.mVtxCount = i11 + 1;
                fArr3[i11] = 0.0f;
            }
            this.mMaxIndex++;
        }

        private void makeSpace(int i2) {
            int i3 = this.mVtxCount + i2;
            float[] fArr = this.mVtxData;
            if (i3 >= fArr.length) {
                float[] fArr2 = new float[fArr.length * 2];
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                this.mVtxData = fArr2;
            }
        }

        public TriangleMeshBuilder addTriangle(int i2, int i3, int i4) {
            int i5 = this.mMaxIndex;
            if (i2 >= i5 || i2 < 0 || i3 >= i5 || i3 < 0 || i4 >= i5 || i4 < 0) {
                throw new IllegalStateException("Index provided greater than vertex count.");
            }
            int i6 = this.mIndexCount + 3;
            short[] sArr = this.mIndexData;
            if (i6 >= sArr.length) {
                short[] sArr2 = new short[sArr.length * 2];
                System.arraycopy(sArr, 0, sArr2, 0, sArr.length);
                this.mIndexData = sArr2;
            }
            short[] sArr3 = this.mIndexData;
            int i7 = this.mIndexCount;
            int i8 = i7 + 1;
            sArr3[i7] = (short) i2;
            int i9 = i8 + 1;
            sArr3[i8] = (short) i3;
            this.mIndexCount = i9 + 1;
            sArr3[i9] = (short) i4;
            return this;
        }

        public TriangleMeshBuilder addVertex(float f2, float f3) {
            if (this.mVtxSize != 2) {
                throw new IllegalStateException("add mistmatch with declared components.");
            }
            makeSpace(2);
            float[] fArr = this.mVtxData;
            int i2 = this.mVtxCount;
            int i3 = i2 + 1;
            fArr[i2] = f2;
            this.mVtxCount = i3 + 1;
            fArr[i3] = f3;
            latch();
            return this;
        }

        public Mesh create(boolean z2) {
            Element.Builder builder = new Element.Builder(this.mRS);
            builder.add(Element.createVector(this.mRS, Element.DataType.FLOAT_32, this.mVtxSize), BrowserContract.Bookmarks.POSITION);
            if ((this.mFlags & 1) != 0) {
                builder.add(Element.F32_4(this.mRS), "color");
            }
            if ((this.mFlags & 256) != 0) {
                builder.add(Element.F32_2(this.mRS), "texture0");
            }
            if ((this.mFlags & 2) != 0) {
                builder.add(Element.F32_3(this.mRS), "normal");
            }
            this.mElement = builder.create();
            Builder builder2 = new Builder(this.mRS, z2 ? 5 : 1);
            builder2.addVertexType(this.mElement, this.mMaxIndex);
            builder2.addIndexSetType(Element.U16(this.mRS), this.mIndexCount, Primitive.TRIANGLE);
            Mesh meshCreate = builder2.create();
            meshCreate.getVertexAllocation(0).copy1DRangeFromUnchecked(0, this.mMaxIndex, this.mVtxData);
            if (z2) {
                meshCreate.getVertexAllocation(0).syncAll(1);
            }
            meshCreate.getIndexSetAllocation(0).copy1DRangeFromUnchecked(0, this.mIndexCount, this.mIndexData);
            if (z2) {
                meshCreate.getIndexSetAllocation(0).syncAll(1);
            }
            return meshCreate;
        }

        public TriangleMeshBuilder setColor(float f2, float f3, float f4, float f5) {
            if ((this.mFlags & 1) == 0) {
                throw new IllegalStateException("add mistmatch with declared components.");
            }
            this.mR = f2;
            this.mG = f3;
            this.mB = f4;
            this.mA = f5;
            return this;
        }

        public TriangleMeshBuilder setNormal(float f2, float f3, float f4) {
            if ((this.mFlags & 2) == 0) {
                throw new IllegalStateException("add mistmatch with declared components.");
            }
            this.mNX = f2;
            this.mNY = f3;
            this.mNZ = f4;
            return this;
        }

        public TriangleMeshBuilder setTexture(float f2, float f3) {
            if ((this.mFlags & 256) == 0) {
                throw new IllegalStateException("add mistmatch with declared components.");
            }
            this.mS0 = f2;
            this.mT0 = f3;
            return this;
        }

        public TriangleMeshBuilder addVertex(float f2, float f3, float f4) {
            if (this.mVtxSize == 3) {
                makeSpace(4);
                float[] fArr = this.mVtxData;
                int i2 = this.mVtxCount;
                int i3 = i2 + 1;
                fArr[i2] = f2;
                int i4 = i3 + 1;
                fArr[i3] = f3;
                int i5 = i4 + 1;
                fArr[i4] = f4;
                this.mVtxCount = i5 + 1;
                fArr[i5] = 1.0f;
                latch();
                return this;
            }
            throw new IllegalStateException("add mistmatch with declared components.");
        }
    }
}
