.class public Lm0/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/n;


# direct methods
.method public constructor <init>(Lm0/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/n$a;->a:Lm0/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm0/n$a;->a:Lm0/n;

    invoke-static {v0}, Lm0/n;->N2(Lm0/n;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lm0/n$a;->a:Lm0/n;

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xe1

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-static {v0}, Lm0/n;->O2(Lm0/n;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v3

    const/4 v2, 0x3

    iget-object v3, p0, Lm0/n$a;->a:Lm0/n;

    invoke-static {v3}, Lm0/n;->O2(Lm0/n;)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lm0/n;->S2([I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
