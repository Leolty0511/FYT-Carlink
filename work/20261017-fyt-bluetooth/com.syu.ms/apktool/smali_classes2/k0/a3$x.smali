.class public Lk0/a3$x;
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
    iput-object p1, p0, Lk0/a3$x;->a:Lk0/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Ly0/f;->C0:I

    .line 2
    sget v1, Ly0/f;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    sget v1, Ly0/f;->C0:I

    if-nez v1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v4, 0xe3

    aput v4, v1, v2

    const/16 v2, 0x84

    aput v2, v1, v3

    const/4 v2, 0x2

    aput v2, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x7

    aput v3, v1, v2

    const/4 v2, 0x4

    aput v0, v1, v2

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
