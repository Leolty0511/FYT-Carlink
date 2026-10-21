.class public Lmodule/canbus/t$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/t;


# direct methods
.method public constructor <init>(Lmodule/canbus/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/t$d;->a:Lmodule/canbus/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Ly0/f;->i:I

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    sget v0, Ly0/f;->C0:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v1, v1, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v1, v4

    const/4 v3, 0x3

    aput v3, v1, v2

    const/4 v2, 0x2

    const/16 v5, -0x5f

    aput v5, v1, v2

    aput v4, v1, v3

    const/4 v2, 0x4

    aput v4, v1, v2

    const/4 v2, 0x5

    aput v0, v1, v2

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x3
        -0x5f
        0x0
        0x0
        0x0
    .end array-data
.end method
