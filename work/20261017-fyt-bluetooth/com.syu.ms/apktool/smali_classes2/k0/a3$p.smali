.class public Lk0/a3$p;
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
    iput-object p1, p0, Lk0/a3$p;->a:Lk0/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/a3$p;->a:Lk0/a3;

    iget v0, v0, Lk0/a3;->H0:I

    if-gtz v0, :cond_1

    .line 2
    invoke-static {}, Lk0/qt;->i0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.syu.carinfo.camry2012.xp.ToyotaLexusEQActi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lo1/u;->k()V

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/a3$p;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->v3(Lk0/a3;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lk0/a3$p;->a:Lk0/a3;

    iget v1, v0, Lk0/a3;->H0:I

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 6
    iput v1, v0, Lk0/a3;->H0:I

    :cond_2
    return-void
.end method
