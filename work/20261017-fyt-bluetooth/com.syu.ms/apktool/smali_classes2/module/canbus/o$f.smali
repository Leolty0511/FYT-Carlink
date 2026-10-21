.class public Lmodule/canbus/o$f;
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
    iput-object p1, p0, Lmodule/canbus/o$f;->a:Lmodule/canbus/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/o$f;->a:Lmodule/canbus/o;

    iget-byte v1, v0, Lmodule/canbus/o;->V:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lmodule/canbus/o;->V:B

    const/4 v2, 0x5

    if-lez v1, :cond_1

    .line 2
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v2, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 6
    iget-object v0, p0, Lmodule/canbus/o$f;->a:Lmodule/canbus/o;

    invoke-static {v0}, Lmodule/canbus/o;->h3(Lmodule/canbus/o;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v0}, Lmodule/canbus/o;->i3(Lmodule/canbus/o;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lmodule/canbus/o$f;->a:Lmodule/canbus/o;

    iput-byte v2, v0, Lmodule/canbus/o;->V:B

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x7f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x3f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x7f
        0x0
    .end array-data
.end method
