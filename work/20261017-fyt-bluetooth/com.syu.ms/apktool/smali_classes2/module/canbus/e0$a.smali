.class public Lmodule/canbus/e0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/e0;


# direct methods
.method public constructor <init>(Lmodule/canbus/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/e0$a;->a:Lmodule/canbus/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmodule/canbus/e0$a;->a:Lmodule/canbus/e0;

    const/4 v1, 0x0

    iput v1, v0, Lmodule/canbus/e0;->h:I

    .line 2
    iput v1, v0, Lmodule/canbus/e0;->i:I

    .line 3
    sget v2, Lu0/b;->a0:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 4
    iput-boolean v1, v0, Lmodule/canbus/e0;->o:Z

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_1

    .line 5
    iget-boolean v1, v0, Lmodule/canbus/e0;->o:Z

    if-nez v1, :cond_1

    .line 6
    iput-boolean v3, v0, Lmodule/canbus/e0;->o:Z

    :cond_1
    :goto_0
    if-ne v2, v3, :cond_5

    .line 7
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x5

    if-eq v0, v3, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    if-eq v0, v1, :cond_4

    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    new-array v0, v1, [I

    .line 9
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 10
    iget-object v0, p0, Lmodule/canbus/e0$a;->a:Lmodule/canbus/e0;

    invoke-static {v0}, Lmodule/canbus/e0;->e3(Lmodule/canbus/e0;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lmodule/canbus/e0;->f3(Lmodule/canbus/e0;I)V

    goto :goto_1

    :cond_3
    new-array v0, v1, [I

    .line 11
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 12
    iget-object v0, p0, Lmodule/canbus/e0$a;->a:Lmodule/canbus/e0;

    invoke-static {v0}, Lmodule/canbus/e0;->e3(Lmodule/canbus/e0;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lmodule/canbus/e0;->f3(Lmodule/canbus/e0;I)V

    goto :goto_1

    :cond_4
    new-array v0, v1, [I

    .line 13
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_5
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x11
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x7
        0x11
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x7
        0x11
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x11
    .end array-data
.end method
