.class public Lm0/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/o;


# direct methods
.method public constructor <init>(Lm0/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/o$a;->a:Lm0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUpgradeStep ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm0/o$a;->a:Lm0/o;

    invoke-static {v1}, Lm0/o;->N2(Lm0/o;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOUL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lm0/o$a;->a:Lm0/o;

    invoke-static {v0}, Lm0/o;->N2(Lm0/o;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lm0/o$a;->a:Lm0/o;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xea

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-static {v0}, Lm0/o;->O2(Lm0/o;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v3

    const/4 v2, 0x3

    iget-object v3, p0, Lm0/o$a;->a:Lm0/o;

    invoke-static {v3}, Lm0/o;->O2(Lm0/o;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lm0/o;->S2([I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
