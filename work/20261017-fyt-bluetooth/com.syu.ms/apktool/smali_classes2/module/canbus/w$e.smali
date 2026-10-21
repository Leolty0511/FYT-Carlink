.class public Lmodule/canbus/w$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lmodule/canbus/w;->k:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lmodule/canbus/w;->k:I

    if-lez v0, :cond_0

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lmodule/canbus/w;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    const/4 v0, 0x5

    .line 5
    sput v0, Lmodule/canbus/w;->k:I

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x4
        0xe2
        0x0
    .end array-data
.end method
