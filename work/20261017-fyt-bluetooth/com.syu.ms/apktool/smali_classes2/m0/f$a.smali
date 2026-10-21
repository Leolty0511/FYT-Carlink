.class public Lm0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/f;


# direct methods
.method public constructor <init>(Lm0/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/f$a;->a:Lm0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm0/f$a;->a:Lm0/f;

    invoke-static {v0}, Lm0/f;->N2(Lm0/f;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lm0/f$a;->a:Lm0/f;

    invoke-static {v0}, Lm0/f;->Q2(Lm0/f;)I

    .line 3
    iget-object v0, p0, Lm0/f$a;->a:Lm0/f;

    invoke-static {v0}, Lm0/f;->O2(Lm0/f;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lm0/f$a;->a:Lm0/f;

    invoke-static {v0, v2}, Lm0/f;->P2(Lm0/f;I)I

    .line 5
    iget-object v0, p0, Lm0/f$a;->a:Lm0/f;

    invoke-static {v0}, Lm0/f;->R2(Lm0/f;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lm0/f$a;->a:Lm0/f;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    invoke-static {v0, v1}, Lm0/f;->S2(Lm0/f;[B)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
