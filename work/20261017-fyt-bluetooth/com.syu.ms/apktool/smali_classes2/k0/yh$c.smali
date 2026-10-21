.class public Lk0/yh$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/yh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/yh;


# direct methods
.method public constructor <init>(Lk0/yh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yh$c;->a:Lk0/yh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/yh$c;->a:Lk0/yh;

    iget v1, v0, Lk0/yh;->k:I

    sget v2, Lu0/b;->o:I

    if-eq v1, v2, :cond_1

    .line 2
    iput v2, v0, Lk0/yh;->k:I

    const/4 v0, 0x1

    if-ne v2, v0, :cond_1

    if-nez v2, :cond_1

    .line 3
    sget v1, Lk0/nt;->a:I

    const v2, 0xb901c7

    if-eq v1, v2, :cond_0

    const v2, 0xba01c7

    if-eq v1, v2, :cond_0

    const v2, 0xf901c4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v2, 0x86

    aput v2, v1, v0

    const/4 v2, 0x2

    aput v2, v1, v2

    const/4 v2, 0x3

    aput v0, v1, v2

    const/4 v0, 0x4

    .line 4
    invoke-static {}, Lk0/yh;->b3()I

    move-result v2

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method
