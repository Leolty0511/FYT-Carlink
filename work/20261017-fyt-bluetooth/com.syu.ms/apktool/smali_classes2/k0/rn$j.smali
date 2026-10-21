.class public Lk0/rn$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rn;


# direct methods
.method public constructor <init>(Lk0/rn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rn$j;->a:Lk0/rn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/rn$j;->a:Lk0/rn;

    iget v1, v0, Lk0/rn;->f:I

    sget v2, Ly0/f;->Q0:I

    if-eq v1, v2, :cond_2

    .line 2
    iput v2, v0, Lk0/rn;->f:I

    .line 3
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 4
    sget v0, Ly0/f;->Q0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 5
    :goto_0
    sget v3, Ly0/f;->T0:I

    const/4 v4, 0x2

    if-ne v3, v2, :cond_1

    or-int/2addr v0, v4

    goto :goto_1

    :cond_1
    and-int/lit16 v0, v0, 0xfd

    :goto_1
    const/4 v3, 0x4

    new-array v3, v3, [I

    const/16 v5, 0xe3

    aput v5, v3, v1

    const/16 v1, 0xd0

    aput v1, v3, v2

    aput v2, v3, v4

    const/4 v1, 0x3

    aput v0, v3, v1

    .line 6
    invoke-static {v3}, Lz/k;->s([I)V

    :cond_2
    return-void
.end method
