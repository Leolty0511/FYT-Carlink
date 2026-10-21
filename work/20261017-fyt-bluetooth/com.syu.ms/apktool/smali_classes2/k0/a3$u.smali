.class public Lk0/a3$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/a3;


# direct methods
.method public constructor <init>(Lk0/a3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/a3$u;->a:Lk0/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lk0/nt;->W:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x5

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v1

    const/16 v1, 0x83

    aput v1, v3, v2

    const/4 v1, 0x2

    aput v1, v3, v1

    const/4 v1, 0x3

    const/16 v2, 0x39

    aput v2, v3, v1

    const/4 v1, 0x4

    aput v0, v3, v1

    .line 2
    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
