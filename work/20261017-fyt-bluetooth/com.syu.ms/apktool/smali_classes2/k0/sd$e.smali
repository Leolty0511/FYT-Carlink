.class public Lk0/sd$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sd;


# direct methods
.method public constructor <init>(Lk0/sd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sd$e;->a:Lk0/sd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/sd$e;->a:Lk0/sd;

    iget v1, v0, Lk0/sd;->l:I

    if-lez v1, :cond_0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 2
    iput v1, v0, Lk0/sd;->l:I

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.rzc.keleijia.KeLeiJia_Set_SeatSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 4
    invoke-static {v1, v0}, Ll0/b0;->l0(II)V

    .line 5
    invoke-static {v1, v2}, Ll0/b0;->l0(II)V

    :cond_0
    return-void
.end method
