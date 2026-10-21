.class public Lmodule/canbus/k0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/k0;


# direct methods
.method public constructor <init>(Lmodule/canbus/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/k0$c;->a:Lmodule/canbus/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/k0$c;->a:Lmodule/canbus/k0;

    const/16 v1, 0xa

    iput-byte v1, v0, Lmodule/canbus/k0;->M:B

    .line 2
    sget v1, Lu0/b;->a0:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    invoke-static {v0}, Lmodule/canbus/k0;->H3(Lmodule/canbus/k0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xc0
        0x8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
