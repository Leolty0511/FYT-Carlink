.class public Lmodule/canbus/f$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/f;


# direct methods
.method public constructor <init>(Lmodule/canbus/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/f$l;->a:Lmodule/canbus/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lmodule/canbus/f$l;->a:Lmodule/canbus/f;

    sget v1, Lu0/b;->s0:I

    invoke-static {v0, v1}, Lmodule/canbus/f;->m3(Lmodule/canbus/f;I)I

    move-result v1

    invoke-static {v0, v1}, Lmodule/canbus/f;->T3(Lmodule/canbus/f;I)I

    .line 2
    iget-object v0, p0, Lmodule/canbus/f$l;->a:Lmodule/canbus/f;

    invoke-static {v0}, Lmodule/canbus/f;->S3(Lmodule/canbus/f;)I

    move-result v0

    iget-object v1, p0, Lmodule/canbus/f$l;->a:Lmodule/canbus/f;

    invoke-static {v1}, Lmodule/canbus/f;->n3(Lmodule/canbus/f;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lmodule/canbus/f$l;->a:Lmodule/canbus/f;

    iget v1, v0, Lmodule/canbus/f;->K:I

    if-nez v1, :cond_0

    const/16 v2, 0x8

    new-array v2, v2, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/16 v5, -0x37

    aput v5, v2, v3

    const/4 v3, 0x2

    const/4 v5, 0x5

    aput v5, v2, v3

    const/4 v3, 0x3

    aput v1, v2, v3

    const/4 v1, 0x4

    .line 4
    invoke-static {v0}, Lmodule/canbus/f;->S3(Lmodule/canbus/f;)I

    move-result v0

    aput v0, v2, v1

    aput v4, v2, v5

    const/4 v0, 0x6

    aput v4, v2, v0

    const/4 v0, 0x7

    aput v4, v2, v0

    invoke-static {v2}, Lz/k;->s([I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lmodule/canbus/f$l;->a:Lmodule/canbus/f;

    invoke-static {v0}, Lmodule/canbus/f;->S3(Lmodule/canbus/f;)I

    move-result v1

    invoke-static {v0, v1}, Lmodule/canbus/f;->o3(Lmodule/canbus/f;I)I

    :cond_1
    return-void
.end method
