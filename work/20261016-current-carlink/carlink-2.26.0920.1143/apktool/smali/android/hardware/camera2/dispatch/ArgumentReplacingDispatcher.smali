.class public Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/camera2/dispatch/Dispatchable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "TArg:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/dispatch/Dispatchable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mArgumentIndex:I

.field private final mReplaceWith:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTArg;"
        }
    .end annotation
.end field

.field private final mTarget:Landroid/hardware/camera2/dispatch/Dispatchable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/Dispatchable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/dispatch/Dispatchable;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/dispatch/Dispatchable<",
            "TT;>;ITTArg;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "target must not be null"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/hardware/camera2/dispatch/Dispatchable;

    .line 12
    .line 13
    iput-object p1, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    .line 14
    .line 15
    const-string p1, "argumentIndex must not be negative"

    .line 16
    .line 17
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iput p1, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mArgumentIndex:I

    .line 22
    .line 23
    const-string/jumbo p1, "replaceWith must not be null"

    .line 24
    .line 25
    .line 26
    invoke-static {p3, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mReplaceWith:Ljava/lang/Object;

    .line 31
    .line 32
    return-void
.end method

.method private static arrayCopy([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v0, :cond_0

    .line 6
    .line 7
    aget-object v3, p0, v2

    .line 8
    .line 9
    aput-object v3, v1, v2

    .line 10
    .line 11
    add-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-object v1
.end method


# virtual methods
.method public dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    array-length v0, p2

    .line 2
    iget v1, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mArgumentIndex:I

    .line 3
    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {p2}, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->arrayCopy([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iget v0, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mArgumentIndex:I

    .line 11
    .line 12
    iget-object v1, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mReplaceWith:Ljava/lang/Object;

    .line 13
    .line 14
    aput-object v1, p2, v0

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    .line 17
    .line 18
    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/dispatch/Dispatchable;->dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
