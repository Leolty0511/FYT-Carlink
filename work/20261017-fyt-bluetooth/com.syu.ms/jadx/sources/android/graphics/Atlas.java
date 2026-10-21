package android.graphics;

/* JADX INFO: loaded from: classes.dex */
public class Atlas {
    public static final int FLAG_ADD_PADDING = 2;
    public static final int FLAG_ALLOW_ROTATIONS = 1;
    public static final int FLAG_DEFAULTS = 2;
    private final Policy mPolicy;

    /* JADX INFO: renamed from: android.graphics.Atlas$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$android$graphics$Atlas$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$android$graphics$Atlas$Type = iArr;
            try {
                iArr[Type.SliceMinArea.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Atlas$Type[Type.SliceMaxArea.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Atlas$Type[Type.SliceShortAxis.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$Atlas$Type[Type.SliceLongAxis.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class Entry {
        public boolean rotated;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f133x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f134y;
    }

    public static abstract class Policy {
        private Policy() {
        }

        public abstract Entry pack(int i2, int i3, Entry entry);

        public /* synthetic */ Policy(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static class SlicePolicy extends Policy {
        private final boolean mAllowRotation;
        private final int mPadding;
        private final Cell mRoot;
        private final SplitDecision mSplitDecision;

        public static class Cell {
            public int height;
            public Cell next;
            public int width;

            /* JADX INFO: renamed from: x, reason: collision with root package name */
            public int f135x;

            /* JADX INFO: renamed from: y, reason: collision with root package name */
            public int f136y;

            private Cell() {
            }

            public String toString() {
                return String.format("cell[x=%d y=%d width=%d height=%d", Integer.valueOf(this.f135x), Integer.valueOf(this.f136y), Integer.valueOf(this.width), Integer.valueOf(this.height));
            }

            public /* synthetic */ Cell(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        public static class LongerFreeAxisSplitDecision implements SplitDecision {
            private LongerFreeAxisSplitDecision() {
            }

            @Override // android.graphics.Atlas.SlicePolicy.SplitDecision
            public boolean splitHorizontal(int i2, int i3, int i4, int i5) {
                return i2 > i3;
            }

            public /* synthetic */ LongerFreeAxisSplitDecision(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        public static class MaxAreaSplitDecision implements SplitDecision {
            private MaxAreaSplitDecision() {
            }

            @Override // android.graphics.Atlas.SlicePolicy.SplitDecision
            public boolean splitHorizontal(int i2, int i3, int i4, int i5) {
                return i4 * i3 <= i2 * i5;
            }

            public /* synthetic */ MaxAreaSplitDecision(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        public static class MinAreaSplitDecision implements SplitDecision {
            private MinAreaSplitDecision() {
            }

            @Override // android.graphics.Atlas.SlicePolicy.SplitDecision
            public boolean splitHorizontal(int i2, int i3, int i4, int i5) {
                return i4 * i3 > i2 * i5;
            }

            public /* synthetic */ MinAreaSplitDecision(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        public static class ShorterFreeAxisSplitDecision implements SplitDecision {
            private ShorterFreeAxisSplitDecision() {
            }

            @Override // android.graphics.Atlas.SlicePolicy.SplitDecision
            public boolean splitHorizontal(int i2, int i3, int i4, int i5) {
                return i2 <= i3;
            }

            public /* synthetic */ ShorterFreeAxisSplitDecision(AnonymousClass1 anonymousClass1) {
                this();
            }
        }

        public interface SplitDecision {
            boolean splitHorizontal(int i2, int i3, int i4, int i5);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public SlicePolicy(int i2, int i3, int i4, SplitDecision splitDecision) {
            AnonymousClass1 anonymousClass1 = null;
            super(anonymousClass1);
            Cell cell = new Cell(anonymousClass1);
            this.mRoot = cell;
            this.mAllowRotation = (i4 & 1) != 0;
            int i5 = (i4 & 2) != 0 ? 1 : 0;
            this.mPadding = i5;
            Cell cell2 = new Cell(anonymousClass1);
            cell2.f136y = i5;
            cell2.f135x = i5;
            cell2.width = i2 - (i5 * 2);
            cell2.height = i3 - (i5 * 2);
            cell.next = cell2;
            this.mSplitDecision = splitDecision;
        }

        private boolean insert(Cell cell, Cell cell2, int i2, int i3, Entry entry) {
            int i4 = cell.width;
            boolean z2 = false;
            if (i4 < i2 || cell.height < i3) {
                if (!this.mAllowRotation || i4 < i3 || cell.height < i2) {
                    return false;
                }
                z2 = true;
                i3 = i2;
                i2 = i3;
            }
            int i5 = i4 - i2;
            int i6 = cell.height - i3;
            AnonymousClass1 anonymousClass1 = null;
            Cell cell3 = new Cell(anonymousClass1);
            Cell cell4 = new Cell(anonymousClass1);
            int i7 = cell.f135x + i2;
            int i8 = this.mPadding;
            cell3.f135x = i7 + i8;
            cell3.f136y = cell.f136y;
            cell3.width = i5 - i8;
            cell4.f135x = cell.f135x;
            cell4.f136y = cell.f136y + i3 + i8;
            cell4.height = i6 - i8;
            if (this.mSplitDecision.splitHorizontal(i5, i6, i2, i3)) {
                cell3.height = i3;
                cell4.width = cell.width;
            } else {
                cell3.height = cell.height;
                cell4.width = i2;
                cell4 = cell3;
                cell3 = cell4;
            }
            if (cell3.width > 0 && cell3.height > 0) {
                cell2.next = cell3;
                cell2 = cell3;
            }
            if (cell4.width <= 0 || cell4.height <= 0) {
                cell2.next = cell.next;
            } else {
                cell2.next = cell4;
                cell4.next = cell.next;
            }
            cell.next = null;
            entry.f133x = cell.f135x;
            entry.f134y = cell.f136y;
            entry.rotated = z2;
            return true;
        }

        @Override // android.graphics.Atlas.Policy
        public Entry pack(int i2, int i3, Entry entry) {
            Cell cell = this.mRoot;
            Cell cell2 = cell.next;
            while (true) {
                Cell cell3 = cell;
                cell = cell2;
                if (cell == null) {
                    return null;
                }
                if (insert(cell, cell3, i2, i3, entry)) {
                    return entry;
                }
                cell2 = cell.next;
            }
        }
    }

    public enum Type {
        SliceMinArea,
        SliceMaxArea,
        SliceShortAxis,
        SliceLongAxis
    }

    public Atlas(Type type, int i2, int i3) {
        this(type, i2, i3, 2);
    }

    private static Policy findPolicy(Type type, int i2, int i3, int i4) {
        int i5 = AnonymousClass1.$SwitchMap$android$graphics$Atlas$Type[type.ordinal()];
        AnonymousClass1 anonymousClass1 = null;
        if (i5 == 1) {
            return new SlicePolicy(i2, i3, i4, new SlicePolicy.MinAreaSplitDecision(anonymousClass1));
        }
        if (i5 == 2) {
            return new SlicePolicy(i2, i3, i4, new SlicePolicy.MaxAreaSplitDecision(anonymousClass1));
        }
        if (i5 == 3) {
            return new SlicePolicy(i2, i3, i4, new SlicePolicy.ShorterFreeAxisSplitDecision(anonymousClass1));
        }
        if (i5 != 4) {
            return null;
        }
        return new SlicePolicy(i2, i3, i4, new SlicePolicy.LongerFreeAxisSplitDecision(anonymousClass1));
    }

    public Entry pack(int i2, int i3) {
        return pack(i2, i3, null);
    }

    public Atlas(Type type, int i2, int i3, int i4) {
        this.mPolicy = findPolicy(type, i2, i3, i4);
    }

    public Entry pack(int i2, int i3, Entry entry) {
        if (entry == null) {
            entry = new Entry();
        }
        return this.mPolicy.pack(i2, i3, entry);
    }
}
