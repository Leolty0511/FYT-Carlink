.class public Lk0/rc$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/rc;->S2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rc;


# direct methods
.method public constructor <init>(Lk0/rc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rc$s;->a:Lk0/rc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lk0/rc$s;->a:Lk0/rc;

    iget v0, p1, Lk0/rc;->z:I

    sget v1, Ly0/f;->T0:I

    if-eq v0, v1, :cond_2

    .line 2
    iput v1, p1, Lk0/rc;->z:I

    .line 3
    sget p1, Lu0/b;->D:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 4
    sget p1, Ly0/f;->Q0:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 5
    :goto_0
    sget v2, Ly0/f;->T0:I

    const/4 v3, 0x2

    if-ne v2, v1, :cond_1

    or-int/2addr p1, v3

    goto :goto_1

    :cond_1
    and-int/lit16 p1, p1, 0xfd

    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v0

    const/16 v0, 0xd0

    aput v0, v2, v1

    aput v1, v2, v3

    const/4 v0, 0x3

    aput p1, v2, v0

    .line 6
    invoke-static {v2}, Lz/k;->s([I)V

    :cond_2
    return-void
.end method
