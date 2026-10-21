.class public Ln0/e0$b;
.super Lc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/e0;->x3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ln0/e0;


# direct methods
.method public constructor <init>(Ln0/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/e0$b;->e:Ln0/e0;

    invoke-direct {p0}, Lc/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 1

    const-string p1, "com.syu.aftercamera"

    .line 1
    invoke-static {p1}, Lo1/u;->l0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lo1/u;->S0(Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
