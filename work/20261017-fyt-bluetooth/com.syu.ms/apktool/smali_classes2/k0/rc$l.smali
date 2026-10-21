.class public Lk0/rc$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rc;
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
    iput-object p1, p0, Lk0/rc$l;->a:Lk0/rc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Lu0/b;->m3:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    sget v3, Ly0/f;->i:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    sget v3, Ly0/f;->C0:I

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, 0x70

    goto :goto_2

    :cond_2
    :goto_1
    or-int/lit16 v0, v0, 0x80

    :goto_2
    const/4 v3, 0x5

    new-array v3, v3, [I

    const/16 v5, 0xe3

    aput v5, v3, v1

    const/16 v5, 0x72

    aput v5, v3, v4

    aput v2, v3, v2

    const/4 v2, 0x3

    aput v0, v3, v2

    const/4 v0, 0x4

    aput v1, v3, v0

    .line 3
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
