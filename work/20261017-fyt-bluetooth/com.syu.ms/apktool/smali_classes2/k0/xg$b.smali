.class public Lk0/xg$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xg;


# direct methods
.method public constructor <init>(Lk0/xg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xg$b;->a:Lk0/xg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lk0/qt;->k0()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x9

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    .line 2
    sget v4, Lu0/b;->o:I

    if-ne v4, v3, :cond_0

    const/16 v2, 0x60

    :cond_0
    aput v2, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    return-void
.end method
