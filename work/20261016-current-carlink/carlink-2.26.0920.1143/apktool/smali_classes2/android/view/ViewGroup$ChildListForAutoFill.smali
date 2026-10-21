.class Landroid/view/ViewGroup$ChildListForAutoFill;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildListForAutoFill"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x20

.field private static final sPool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Landroid/view/ViewGroup$ChildListForAutoFill;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Landroid/view/ViewGroup$ChildListForAutoFill;->sPool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static obtain()Landroid/view/ViewGroup$ChildListForAutoFill;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/ViewGroup$ChildListForAutoFill;->sPool:Landroid/util/Pools$SimplePool;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup$ChildListForAutoFill;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/view/ViewGroup$ChildListForAutoFill;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/view/ViewGroup$ChildListForAutoFill;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->clear()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/view/ViewGroup$ChildListForAutoFill;->sPool:Landroid/util/Pools$SimplePool;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
