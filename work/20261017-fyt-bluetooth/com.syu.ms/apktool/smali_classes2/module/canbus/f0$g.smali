.class public Lmodule/canbus/f0$g;
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
    iput-object p1, p0, Lmodule/canbus/f0$g;->a:Lmodule/canbus/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/f0$g;->a:Lmodule/canbus/f0;

    iget-byte v1, v0, Lmodule/canbus/f0;->u:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lmodule/canbus/f0;->u:B

    const/4 v2, 0x5

    if-lez v1, :cond_0

    .line 2
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Lmodule/canbus/f0;->o3(Lmodule/canbus/f0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lmodule/canbus/f0$g;->a:Lmodule/canbus/f0;

    iput-byte v2, v0, Lmodule/canbus/f0;->u:B

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x2
        0xf3
        0x1
        0x5
    .end array-data
.end method
