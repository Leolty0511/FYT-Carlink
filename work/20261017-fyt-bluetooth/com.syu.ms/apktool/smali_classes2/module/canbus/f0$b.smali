.class public Lmodule/canbus/f0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/f0;


# direct methods
.method public constructor <init>(Lmodule/canbus/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/f0$b;->a:Lmodule/canbus/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lmodule/canbus/f0;->b3()I

    move-result v0

    .line 2
    invoke-static {}, Lmodule/canbus/f0;->k3()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lmodule/canbus/f0$b;->a:Lmodule/canbus/f0;

    iput-boolean v3, v0, Lmodule/canbus/f0;->B:Z

    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v4, p0, Lmodule/canbus/f0$b;->a:Lmodule/canbus/f0;

    iget-boolean v5, v4, Lmodule/canbus/f0;->B:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 6
    iput-boolean v6, v4, Lmodule/canbus/f0;->B:Z

    new-array v2, v2, [I

    .line 7
    fill-array-data v2, :array_1

    invoke-static {v2}, Lz/k;->s([I)V

    :cond_1
    if-ge v0, v1, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    if-le v0, v1, :cond_3

    const/4 v6, -0x1

    .line 8
    :cond_3
    :goto_0
    invoke-static {v3, v6}, Lmodule/canbus/f0;->v3(II)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0xf0
        0x7
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0xf0
        0x7
        0x0
    .end array-data
.end method
