.class public Lmodule/canbus/q$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/q;


# direct methods
.method public constructor <init>(Lmodule/canbus/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/q$d;->a:Lmodule/canbus/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmodule/canbus/q$d;->a:Lmodule/canbus/q;

    iget-byte v1, v0, Lmodule/canbus/q;->n:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lmodule/canbus/q;->n:B

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v1, v3

    const/16 v3, 0x81

    aput v3, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    .line 2
    sget v4, Lu0/b;->a0:I

    aput v4, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lmodule/canbus/q;->e3(Lmodule/canbus/q;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lmodule/canbus/q$d;->a:Lmodule/canbus/q;

    const/4 v1, 0x5

    iput-byte v1, v0, Lmodule/canbus/q;->n:B

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x29
    .end array-data
.end method
