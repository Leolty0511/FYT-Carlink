.class public Lk0/td$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/td;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/td;


# direct methods
.method public constructor <init>(Lk0/td;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/td$e;->a:Lk0/td;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->W1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 3
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, v1}, Lu0/h;->c(I)V

    .line 4
    :cond_0
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.focus.FocusSyncBtActi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.syu.canbus.sync"

    .line 5
    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 6
    sput v0, Lu0/b;->W1:I

    return-void
.end method
