.class public final Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RangeInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final RANGE_TYPE_FLOAT:I = 0x1

.field public static final RANGE_TYPE_INT:I = 0x0

.field public static final RANGE_TYPE_PERCENT:I = 0x2

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrent:F

.field private mMax:F

.field private mMin:F

.field private mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(IFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    .line 5
    .line 6
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    .line 7
    .line 8
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    .line 9
    .line 10
    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    .line 11
    .line 12
    return-void
.end method

.method private clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    .line 6
    .line 7
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    .line 8
    .line 9
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    .line 10
    .line 11
    return-void
.end method

.method public static obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .locals 1

    .line 2
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    return-object v0

    .line 4
    :cond_0
    iput p0, v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    .line 5
    iput p1, v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    .line 6
    iput p2, v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    .line 7
    iput p3, v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .locals 3

    .line 1
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    invoke-static {v0, v1, v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCurrent()F
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mCurrent:F

    return v0
.end method

.method public getMax()F
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMax:F

    return v0
.end method

.method public getMin()F
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mMin:F

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->mType:I

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->clear()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
