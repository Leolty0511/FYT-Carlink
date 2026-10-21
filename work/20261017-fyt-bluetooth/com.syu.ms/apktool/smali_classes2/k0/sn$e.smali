.class public Lk0/sn$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sn;


# direct methods
.method public constructor <init>(Lk0/sn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sn$e;->a:Lk0/sn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-wide v0, Lu0/b;->b2:D

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/16 v0, 0x90

    .line 2
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    return-void
.end method
