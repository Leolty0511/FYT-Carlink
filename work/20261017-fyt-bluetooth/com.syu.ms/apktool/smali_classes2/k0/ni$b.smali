.class public Lk0/ni$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ni;


# direct methods
.method public constructor <init>(Lk0/ni;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ni$b;->a:Lk0/ni;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/16 v3, 0x84

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/4 v3, 0x7

    aput v3, v0, v1

    .line 1
    invoke-static {}, Lk0/ni;->c3()[I

    move-result-object v1

    sget v3, Ly0/f;->c:I

    const/16 v4, 0x24

    invoke-static {v3, v2, v4}, Lo1/o0;->a(III)I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
