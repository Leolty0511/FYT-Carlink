.class public Lk0/ld$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ld;


# direct methods
.method public constructor <init>(Lk0/ld;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ld$f;->a:Lk0/ld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Ly0/f;->c:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x2

    aput v3, v1, v2

    const/16 v2, -0x74

    aput v2, v1, v3

    const/4 v2, 0x3

    aput v2, v1, v2

    const/4 v2, 0x4

    aput v0, v1, v2

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
