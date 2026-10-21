.class public Ll0/c0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll0/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Ll0/c0;->m:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Ll0/c0;->m:I

    if-lez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v0, v2

    const/16 v2, 0x81

    aput v2, v0, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    .line 2
    sget v2, Lu0/b;->a0:I

    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    const/4 v0, 0x5

    .line 4
    sput v0, Ll0/c0;->m:I

    :goto_0
    return-void
.end method
