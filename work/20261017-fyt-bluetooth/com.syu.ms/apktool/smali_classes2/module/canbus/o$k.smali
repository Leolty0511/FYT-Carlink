.class public Lmodule/canbus/o$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/o;


# direct methods
.method public constructor <init>(Lmodule/canbus/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/o$k;->a:Lmodule/canbus/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x6

    const/16 v2, 0x18

    if-ne v0, v2, :cond_0

    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    const-wide/16 v2, 0x64

    .line 3
    invoke-static {v2, v3}, La/i;->a0(J)V

    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lmodule/canbus/o$k;->a:Lmodule/canbus/o;

    iget v0, v0, Lmodule/canbus/o;->P:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 8
    :goto_0
    iget-object v0, p0, Lmodule/canbus/o$k;->a:Lmodule/canbus/o;

    invoke-static {v0}, Lmodule/canbus/o;->e3(Lmodule/canbus/o;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x83
        0x3
        0x1a
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x83
        0x3
        0x1a
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x2
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x83
        0x3
        0xa
        0x1
        0x0
    .end array-data
.end method
