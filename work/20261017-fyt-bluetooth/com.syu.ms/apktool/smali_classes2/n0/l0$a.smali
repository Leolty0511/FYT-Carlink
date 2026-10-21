.class public Ln0/l0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/l0;


# direct methods
.method public constructor <init>(Ln0/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/l0$a;->a:Ln0/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget v0, Lu0/b;->o:I

    if-nez v0, :cond_1

    .line 2
    sget v0, Lu0/b;->k:I

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lk0/qt;->f()V

    :cond_1
    :goto_0
    return-void
.end method
